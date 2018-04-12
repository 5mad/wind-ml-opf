function mpc = t_psse_case3
%T_PSSE_CASE3
%   PSS(tm)E-30 RAW created by rawd30  FRI, FEB 26 2010  15:35
%   PSS(TM)E SAMPLE CASE
%   ALL DATA CATEGORIES WITH SEQUENCE DATA
%
%   Converted by MATPOWER 5.0 using PSSE2MPC on 11-Aug-2014
%   from 't_psse_case3.raw' using PSS/E rev 30 format.
%
%   WARNINGS:
%       Skipped 6 lines of voltage source converter data.
%       Skipped 2 lines of impedance correction data.
%       Skipped 14 lines of multi-terminal DC data.
%       Skipped 1 line of multi-section line data.
%       Skipped 9 lines of zone data.
%       Skipped 5 lines of inter-area transfer data.
%       Skipped 5 lines of owner data.
%       Skipped 2 lines of FACTS control device data.
%       Using default voltage magnitude limits: VMIN = 0.9 p.u., VMAX = 1.1 p.u.
%       Added buses 100001-100004 as star-points for 3-winding transformers.
%
%   See CASEFORMAT for details on the MATPOWER case file format.

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	101	2	0	0	0	0	1	1.01	-10.4286	21.6	1	1.1	0.9;
	102	2	0	0	0	0	1	1.01	-10.7806	21.6	1	1.1	0.9;
	151	1	0	0	13.42	-650.1	1	1.00219	-13.5685	500	1	1.1	0.9;
	152	1	3019.08679	1119.0484	3.93	-200	1	1.04377	-23.4406	500	2	1.1	0.9;
	153	1	200	100	0	0	1	1.05721	-25.1919	230	3	1.1	0.9;
	154	1	1000	580	2.45	324	1	0.99185	-32.4867	230	3	1.1	0.9;
	155	1	0	0	0	0	1	1.01723	-23.6357	230	4	1.1	0.9;
	201	1	0	0	3.67	-600	2	0.99007	-18.7119	500	7	1.1	0.9;
	202	1	0	0	0	0	2	1.02108	-25.6705	500	2	1.1	0.9;
	203	1	500	250	0	50	2	1	-29.1257	230	8	1.1	0.9;
	204	1	0	0	0	0	2	1.03038	-30.8605	500	8	1.1	0.9;
	205	1	2160	610	2.78	300	2	1	-33.1707	230	8	1.1	0.9;
	206	2	0	0	0	0	2	1	-30.7158	18	8	1.1	0.9;
	207	1	0	0	0	0	2	1.01406	-24.9621	500	7	1.1	0.9;
	211	2	0	0	0	0	2	1	-14.0566	20	7	1.1	0.9;
	212	1	0	0	5.13	400	2	1.02695	-31.5471	230	7	1.1	0.9;
	213	1	0	0	5.14	400	2	1.10677	-34.8128	230	7	1.1	0.9;
	214	1	500	75	0	0	2	1.07726	-36.2426	230	7	1.1	0.9;
	215	1	0	140	0	0	2	0.98539	-33.1092	18	8	1.1	0.9;
	216	1	0	12	0	0	2	0.99637	-33.1476	230	8	1.1	0.9;
	217	1	0	10	0	0	2	0.99733	-33.1537	230	8	1.1	0.9;
	218	1	0	9	0	0	2	0.99769	-33.1559	230	8	1.1	0.9;
	301	3	0	0	0	0	3	1	0	765	5	1.1	0.9;
	401	3	0	0	0	0	4	1	0	500	9	1.1	0.9;
	402	3	0	0	0	0	6	1	0	500	9	1.1	0.9;
	3001	1	0	0	0	0	5	1.0237	-4.0297	230	6	1.1	0.9;
	3002	1	0	0	0	0	5	0.99933	-2.3463	500	6	1.1	0.9;
	3003	1	0	0	0	0	5	1.01916	-7.46	230	6	1.1	0.9;
	3004	1	0	0	0	0	5	1.01493	-18.243	500	6	1.1	0.9;
	3005	1	100	50	0	0	5	1.0058	-19.2456	230	2	1.1	0.9;
	3006	1	0	0	0	0	5	1.05721	-25.1919	230	4	1.1	0.9;
	3007	1	200	75	0	0	5	0.98456	-23.4443	230	4	1.1	0.9;
	3008	1	200	75	0	0	5	0.99	-24.8894	230	4	1.1	0.9;
	3009	1	1.1	0.9	0	0	5	0.99048	-24.909	230	4	1.1	0.9;
	3010	1	12	5	0	0	5	0.96664	2.1269	21.6	4	1.1	0.9;
	3011	3	0	0	0	0	5	1	0	19.4	6	1.1	0.9;
	3018	2	0	0	0	0	5	0.99	-21.1195	13.8	4	1.1	0.9;
	3021	1	0	0	0	1816.78	3	1	-19.9491	18	5	1.1	0.9;
	3022	1	0	0	0	1677.16	3	1	-19.26	18	5	1.1	0.9;
	9154	2	0	0	0	0	1	1.00262	-28.8545	4.16	3	1.1	0.9;
	9204	2	0	0	0	0	2	1.04738	-28.8276	0.575	8	1.1	0.9;
	93002	2	0	0	0	1.44	5	0.99622	1.4362	0.69	6	1.1	0.9;
	100001	1	0	0	0	0	2	1.02605	-33.2424	1	8	1.1	0.9;
	100002	1	0	0	0	0	2	0.99757	-33.155	1	8	1.1	0.9;
	100003	1	0	0	0	0	5	0.99004	1.5349	1	6	1.1	0.9;
	100004	1	0	0	0	0	5	0.98665	-25.3007	1	4	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf	mu_Pmax	mu_Pmin	mu_Qmax	mu_Qmin
mpc.gen = [
	101	750	125.648	400	-100	1.01	900	1	800	50	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	102	650	112.426	410	-110	1.01	950	1	700	33	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	206	800	283.913	500	-400	1	1000	1	850	50	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	211	600	86.67	510	-100	1	725	1	616	30	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	301	996.883	299.542	700	-650	1	1067	1	1010	320	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	301	996.883	299.542	710	-600	1	1070	1	1011	321	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	301	996.883	299.542	720	-600	1	1075	1	1012	322	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	401	321	142.325	600	-100	1	600	1	350	25	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	402	321	142.325	610	-110	1	610	1	351	26	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	3011	1295.142	141.199	620	-120	1	1050	1	1400	100	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	3018	400	-0.628	300	-150	0.99	530	1	500	50	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	3018	100	-0.157	75	-75	0.99	120	1	110	20	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	9154	10.8	2.193	2.193	-2.193	1.05	12	1	10.8	0	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	9204	6.05	1.989	1.989	1.989	1	8.335	1	7.5	0	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	93002	3.24	-1.475	-1.475	-1.475	1	4	1	3.6	0	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	151	152	0.0026	0.046	3.5	1200	1100	1000	0	0	1	-360	360;
	151	152	0.00261	0.0461	3.51	1205	1105	1005	0	0	1	-360	360;
	151	201	0.001	0.015	1.2	1206	1106	1006	0	0	1	-360	360;
	152	202	0.0008	0.01	0.95	1207	1107	1007	0	0	1	-360	360;
	152	3004	0.003	0.03	2.5	0	0	0	0	0	1	-360	360;
	153	154	0.006	0.054	0.15	350	0	0	0	0	1	-360	360;
	153	3006	0	0.0001	0	0	0	0	0	0	1	-360	360;
	154	155	0.005	0.045	0.1	400	0	0	0	0	1	-360	360;
	154	203	0.004	0.04	0.1	400	0	0	0	0	1	-360	360;
	154	205	0.00033	0.00333	0.09	600	0	0	0	0	1	-360	360;
	154	3008	0.0027	0.022	0.3	800	0	0	0	0	1	-360	360;
	201	202	0.002	0.025	2	1200	0	0	0	0	1	-360	360;
	201	207	0.0015	0.015	1.25	1200	0	0	0	0	1	-360	360;
	203	205	0.005	0.045	0.08	200	0	0	0	0	1	-360	360;
	204	207	0.0015	0.015	1.25	1200	0	0	0	0	1	-360	360;
	205	212	0	0.01	0	1250	0	0	0	0	1	-360	360;
	205	214	0.002	0.025	2	1200	0	0	0	0	1	-360	360;
	205	216	0.005	0.045	0.08	200	0	0	0	0	1	-360	360;
	205	217	0.005	0.045	0.08	200	0	0	0	0	1	-360	360;
	205	218	0.005	0.045	0.08	200	0	0	0	0	1	-360	360;
	213	214	0	0.01	0	1250	0	0	0	0	1	-360	360;
	3001	3003	0	0.008	0	0	0	0	0	0	1	-360	360;
	3002	3004	0.006	0.054	0.09	0	0	0	0	0	1	-360	360;
	3003	3005	0.006	0.054	0.09	0	0	0	0	0	1	-360	360;
	3003	3005	0.006	0.054	0.09	0	0	0	0	0	1	-360	360;
	3005	3006	0.0035	0.03	0.07	0	0	0	0	0	1	-360	360;
	3005	3007	0.003	0.025	0.06	0	0	0	0	0	1	-360	360;
	3005	3008	0.006	0.05	0.12	0	0	0	0	0	0	-360	360;
	3007	3008	0.003	0.025	0.06	0	0	0	0	0	1	-360	360;
	3008	3009	0.003	0.025	0.06	25	22	18	0	0	1	-360	360;
	101	151	9e-05	0.00758	0	1200	1100	1000	1	0	1	-360	360;
	102	151	0.00012	0.0076	0	1210	1125	1025	1	0	1	-360	360;
	152	153	0.00017	0.00775	0	800	750	700	0.95	0	1	-360	360;
	152	3021	9e-05	0.0042	0	1500	1400	1350	1.1	0	1	-360	360;
	152	3022	0.00011	0.0049	0	1510	1410	1393	1.1	0	1	-360	360;
	154	9154	0	0.58333	0	12	0	0	1	0	1	-360	360;
	201	211	0.00026	0.01343	0	700	650	611	1	0	1	-360	360;
	203	202	0.00028	0.0072	0	750	700	657	0.99	0.143	1	-360	360;
	204	205	0.00046	0.00563	0	800	775	717	1.03667	0	1	-360	360;
	204	9204	0.088	0.66171	0	8.75	0	0	1	0	1	-360	360;
	205	206	0.00018	0.00533	0	900	850	799	1.01591	0	1	-360	360;
	3002	93002	0	2.02703	0	3.7	0	0	1	0	1	-360	360;
	3005	3004	0.00035	0.00964	0	550	500	455	1	0	1	-360	360;
	3008	3018	0.00044	0.01276	0	525	475	423	1	0	1	-360	360;
	205	100001	-0.00084	-0.016665	0	150	130	120	1	0	1	-360	360;
	215	100001	0.00153	0.083335	0	20	18	15	1.1	0	1	-360	360;
	216	100001	0.00537	0.516665	0	15	13	10	1	0	0	-360	360;
	205	100002	0.00832	0.093435	0	30	20	10	1	0	0	-360	360;
	217	100002	0.01701	0.238965	0	25	18	12	1	0	1	-360	360;
	218	100002	0.01339	0.119745	0	35	26	14	1	0	1	-360	360;
	3002	100003	0.00015	0.013	0	1200	1150	1090	1.0101	0	1	-360	360;
	3001	100003	5e-05	0.012	0	1250	1175	1112	1.05	0	1	-360	360;
	3011	100003	0.00025	-0.002	0	1280	1200	1157	1.01	0	1	-360	360;
	3008	100004	-0.00015	0.058335	0	20	18	14	1	0	1	-360	360;
	3009	100004	0.0053	0.441665	0	15	13	9	1	0	0	-360	360;
	3010	100004	0.0039	0.358335	0	25	19	16	1	30	1	-360	360;
];

%% bus names
mpc.bus_name = {
	'NUC-A       ';
	'NUC-B       ';
	'NUCPLNT     ';
	'MID500      ';
	'MID230      ';
	'DOWNTN      ';
	'FACTS TE    ';
	'HYDRO       ';
	'EAST500     ';
	'EAST230     ';
	'SUB500      ';
	'SUB230      ';
	'URBGEN      ';
	'DUPONT      ';
	'HYDRO_G     ';
	'INVERT1     ';
	'INVERT2     ';
	'LOADER      ';
	'URBANEAST1  ';
	'URBANEAST1  ';
	'URBANEAST1  ';
	'URBANEAST1  ';
	'NORTH       ';
	'COGEN-1     ';
	'COGEN-2     ';
	'MINE        ';
	'E. MINE     ';
	'S. MINE     ';
	'WEST        ';
	'WEST        ';
	'UPTOWN      ';
	'RURAL       ';
	'CATDOG      ';
	'URBANWEST1  ';
	'URBANWEST2  ';
	'MINE_G      ';
	'CATDOG_G    ';
	'WDUM        ';
	'EDUM        ';
	'WINDBUS1    ';
	'WINDBUS2    ';
	'WINDBUS3    ';
	'STAR_POINT_XFMR_1';
	'STAR_POINT_XFMR_2';
	'STAR_POINT_XFMR_3';
	'STAR_POINT_XFMR_4';
};

%%-----  DC Line Data  -----%%
%	fbus	tbus	status	Pf	Pt	Qf	Qt	Vf	Vt	Pmin	Pmax	QminF	QmaxF	QminT	QmaxT	loss0	loss1
mpc.dcline = [
	301	3021	1	1490.65	1490.65	0	0	1	1	1267.0525	1714.2475	196.247796	1366.30376	498.764513	1450.09468	0	0;
	301	3022	1	1500	1500	0	0	1	1	1275	1725	210.811252	1367.16617	487.379544	1446.42017	0	0;
];
