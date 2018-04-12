%%
clc;

%Initial data for wind turbine
wind_data = csvread('wind_dataset.csv');
catboost_p = csvread('testout.csv');
catboost_p = reshape(catboost_p(1:end-19,:),[316,24]);
wind = windTurbine;
wind.air_density = 1.225;
wind.radius = 54;
wind.rot_speed = 0.8;
wind.blade_angle = 0;
wind_nodes = [5 6 14 17];

%Loading system
define_constants;
system = PowerSystem;
system.case_number = 'case39';
system = system.loadcase();

%Defining constants
number_branch = size(system.model.branch, 1);
flow = zeros(number_branch, 24);
ng = size(system.model.gen, 1);
gen = zeros(ng+length(wind_nodes),24);
loss = zeros(1, 24);
cost = zeros(1, 24);

%Modelling
for hour = 1:24
    %p_el = Power(wind, wind_data(1, hour)) * 100;
    p_el = catboost_p(1, hour) * 100;
    num_gen = ng;
    for node = wind_nodes
        num_gen = num_gen + 1;
        system = system.insert_gen(num_gen, node, p_el*num_gen/10);
    end
    system = system.load_change(hour);
    results = system.opf();
    for i = 1:number_branch
         flow(i, hour) = max(results.branch(i, 14),...
             results.branch(i, 16));
    end
    gen(:, hour) = results.gen(:, 2);
    loss(hour) = real(sum(get_losses(results)));
    cost(hour) = (sum(results.gen(:, 2) .* results.gencost(:, 5))...
        +sum(results.gencost(:, 6)))/sum(results.gen(:, 2));
end

%Data
load_rate = system.loadrate(flow);
cons_bus = system.consumption();

%%
graph = PowerGraphics;
figure;
graph.graph_cons(cons_bus, 3);
%%
figure;
graph.graph_loadrate(load_rate, 3);
%%
figure;
graph.graph_generation(gen, 1);
%%
figure;
graph_saturated(graph, load_rate);
%%
figure;
graph_hoursat(graph, load_rate);
%%
figure;
graph_cost(graph, cost);
%%
figure;
graph_loss(graph, loss);
