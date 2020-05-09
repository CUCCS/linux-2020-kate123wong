#### 任务二实验结果：

+ --help

```
usage: bash chap0x04/tasks/task2.sh [-h] [-i]...
optional arguments:
  -i		show information about wordcupplayerinfo.tsv
  -a		count the number and percentage of players in different age ranges
  -b		count the number and percentage of players on different positions
  -d		show the longest and shorest name of players
  -c		show the oldest and youngest players
  --help		show this help information and exit
for examples:
  bash chap0x04/tasks/task2.sh -i		show information about worldcupplayerinfo.tsv
```

+ 统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员**数量**、**百分比**

```
[<20]	9	0.01221
[20,30]	600	0.81411
[>30]	128	0.17368
```

+ 统计不同场上位置的球员**数量**、**百分比**

```
Défenseur:	1	0.00136
Midfielder:	268	0.36413
Defender:	236	0.32065
Forward:	135	0.18342
Goalie:	    96	0.13043
```

+ 名字最长的球员是谁？名字最短的球员是谁？

```
longest name: Lazaros Christodoulopoulos
longest name: Francisco Javier Rodriguez
longest name: Liassine Cadamuro-Bentaeba
shortest name: Jô
```

+ 年龄最大的球员是谁？年龄最小的球员是谁?

```
smallest age:	18	name:	Luke Shaw
largest age:	42	name:	Faryd Mondragon
smallest age:	18	name:	Fabrice Olinga
```

#### 任务三实验结果

+ --help

```
usage: bash chap0x04/tasks/wblog.sh [-h <filename>] [-u <filename> <url>] ...
optional arguments:
  -a            top 100 hosts
  -b            top 100 ips
  -c            top 100 urls
  -d            state codes statistics
  -e            top 10 url with state codes 4xx
  -u            specify url and display top 100 hosts
  --help            show this help message and exit
for example:
  bash chap0x04/tasks/wblog.sh -u "/ksc.html"	display top 100 access hosts
```

+ 统计访问来源主机TOP 100和分别对应出现的总次数

```
6530	edams.ksc.nasa.gov	
4846	piweba4y.prodigy.com	
4791	163.206.89.4	
4607	piweba5y.prodigy.com	
4416	piweba3y.prodigy.com	
3889	www-d1.proxy.aol.com	
3534	www-b2.proxy.aol.com	
3463	www-b3.proxy.aol.com	
3423	www-c5.proxy.aol.com	
3411	www-b5.proxy.aol.com	
3407	www-c2.proxy.aol.com	
3404	www-d2.proxy.aol.com	
3337	www-a2.proxy.aol.com	
3298	news.ti.com	
3296	www-d3.proxy.aol.com	
3293	www-b4.proxy.aol.com	
3272	www-c3.proxy.aol.com	
3234	www-d4.proxy.aol.com	
3177	www-c1.proxy.aol.com	
3134	www-c4.proxy.aol.com	
3123	intgate.raleigh.ibm.com	
3088	www-c6.proxy.aol.com	
3041	www-a1.proxy.aol.com	
3011	mpngate1.ny.us.ibm.net	
2983	e659229.boeing.com	
2957	piweba1y.prodigy.com	
2906	webgate1.mot.com	
2761	www-relay.pa-x.dec.com	
2318	beta.xerox.com	
2311	poppy.hensa.ac.uk	
2237	vagrant.vf.mmc.com	
1910	palona1.cns.hp.com	
1793	www-proxy.crl.research.digital.com	
1762	koriel.sun.com	
1681	derec	
1637	trusty.lmsc.lockheed.com	
1623	gw2.att.com	
1563	cliffy.lfwc.lockheed.com	
1503	inet2.tek.com	
1485	disarray.demon.co.uk	
1467	gw1.att.com	
1435	128.217.62.1	
1395	interlock.turner.com	
1360	163.205.1.19	
1354	sgigate.sgi.com	
1336	bocagate.bocaraton.ibm.com	
1324	piweba2y.prodigy.com	
1311	gw3.att.com	
1310	keyhole.es.dupont.com	
1297	n1144637.ksc.nasa.gov	
1292	163.205.3.104	
1256	163.205.156.16	
1252	163.205.19.20	
1216	erigate.ericsson.se	
1211	gn2.getnet.com	
1089	gwa.ericsson.com	
1079	tiber.gsfc.nasa.gov	
1054	128.217.62.2	
1017	bstfirewall.bst.bls.com	
1015	163.206.137.21	
1013	spider.tbe.com	
1010	gatekeeper.us.oracle.com	
995	www-c8.proxy.aol.com	
984	whopkins.sso.az.honeywell.com	
966	news.dfrc.nasa.gov	
949	128.159.122.110	
940	proxy0.research.att.com	
925	proxy.austin.ibm.com	
902	www-c9.proxy.aol.com	
901	bbuig150.unisys.com	
899	corpgate.nt.com	
890	sahp315.sandia.gov	
869	amdext.amd.com	
848	128.159.132.56	
830	n1121796.ksc.nasa.gov	
825	igate.uswest.com	
819	gatekeeper.cca.rockwell.com	
815	wwwproxy.sanders.com	
814	gw4.att.com	
812	goose.sms.fi	
808	128.159.144.83	
805	jericho3.microsoft.com	
798	128.159.111.141	
786	jericho2.microsoft.com	
782	sdn_b6_f02_ip.dny.rockwell.com	
778	lamar.d48.lilly.com	
776	163.205.11.31	
772	heimdallp2.compaq.com	
771	stortek1.stortek.com	
762	163.205.16.75	
759	mac998.kip.apple.com	
742	tia1.eskimo.com	
733	www-e1f.gnn.com	
718	www-b1.proxy.aol.com	
715	reddragon.ksc.nasa.gov	
711	128.159.122.137	
701	rmcg.cts.com	
701	bambi.te.rl.ac.uk	
697	electron.mcc.com	
691	163.205.23.76	
```

+ 统计访问来源主机TOP 100 IP和分别对应出现的总次数

```
163.206.89.4	4791
128.217.62.1	1435
163.205.1.19	1360
163.205.3.104	1292
163.205.156.16	1256
163.205.19.20	1252
128.217.62.2	1054
163.206.137.21	1015
128.159.122.110	949
128.159.132.56	848
128.159.144.83	808
128.159.111.141	798
163.205.11.31	776
163.205.16.75	762
128.159.122.137	711
163.205.23.76	691
206.27.25.1	672
198.83.19.44	647
199.1.50.225	641
163.205.23.93	624
139.169.174.102	610
163.205.121.3	600
140.229.116.37	598
141.102.82.127	591
163.206.140.4	586
163.206.104.34	573
204.62.245.32	567
128.159.122.38	565
128.217.62.224	563
128.159.122.107	563
128.159.122.180	553
128.159.123.58	549
163.205.154.11	544
192.112.22.119	532
163.205.16.100	518
199.201.186.103	503
128.159.146.40	503
128.159.122.160	494
192.77.40.4	486
193.143.192.106	482
152.163.192.5	480
163.205.23.71	478
139.169.30.50	475
128.159.122.144	469
163.234.140.22	466
163.205.150.22	463
128.217.61.184	457
163.205.23.72	451
198.83.19.40	448
128.159.122.14	446
199.201.186.104	443
198.83.19.47	443
128.217.61.15	443
128.159.121.34	441
128.159.121.41	438
160.205.119.27	435
163.205.154.17	432
152.163.192.38	432
128.159.122.15	432
128.159.135.73	423
128.159.135.38	423
152.163.192.35	421
128.159.76.128	415
152.163.192.71	413
128.159.63.159	412
163.205.12.100	409
133.53.64.33	404
152.163.192.70	402
128.159.121.64	397
129.239.68.160	396
152.163.192.36	391
163.205.16.90	389
128.32.196.94	389
163.205.1.18	385
163.206.136.1	384
147.147.191.43	383
163.205.16.104	374
152.163.192.69	374
193.178.53.180	373
128.217.63.27	371
130.110.74.81	367
204.69.0.27	366
163.206.130.46	365
152.163.192.67	359
163.205.54.76	357
152.163.192.7	356
198.83.19.43	354
128.159.137.43	350
147.74.110.61	348
163.205.23.44	345
128.159.168.162	343
158.27.59.88	336
152.163.192.3	336
163.205.166.15	335
128.159.145.21	335
163.205.2.180	332
128.217.61.98	329
152.163.192.66	328
163.205.3.38	324
163.205.2.35	324
```

+ 统计最频繁被访问的URL TOP 100

```
97410	/images/NASA-logosmall.gif	
75337	/images/KSC-logosmall.gif	
67448	/images/MOSAIC-logosmall.gif	
67068	/images/USA-logosmall.gif	
66444	/images/WORLD-logosmall.gif	
62778	/images/ksclogo-medium.gif	
43687	/ksc.html	
37826	/history/apollo/images/apollo-logo1.gif	
35138	/images/launch-logo.gif	
30346	/	
27810	/images/ksclogosmall.gif	
24606	/shuttle/missions/sts-69/mission-sts-69.html	
24461	/shuttle/countdown/	
24383	/shuttle/missions/sts-69/count69.gif	
23405	/shuttle/missions/sts-69/sts-69-patch-small.gif	
22453	/shuttle/missions/missions.html	
19877	/images/launchmedium.gif	
17247	/htbin/cdt_main.pl	
12160	/shuttle/countdown/images/countclock.gif	
12137	/icons/menu.xbm	
12057	/icons/blank.xbm	
10345	/software/winvn/winvn.html	
10308	/icons/image.xbm	
10134	/history/history.html	
10126	/history/apollo/images/footprint-logo.gif	
9439	/history/apollo/images/apollo-small.gif	
9230	/history/apollo/images/footprint-small.gif	
9037	/software/winvn/winvn.gif	
8985	/history/apollo/apollo.html	
8662	/software/winvn/wvsmall.gif	
8610	/software/winvn/bluemarb.gif	
8583	/htbin/cdt_clock.pl	
7865	/shuttle/countdown/liftoff.html	
7389	/shuttle/resources/orbiters/orbiters-logo.gif	
7261	/images/shuttle-patch-logo.gif	
7177	/history/apollo/apollo-13/apollo-13.html	
7040	/images/	
7029	/shuttle/countdown/video/livevideo2.gif	
6615	/images/kscmap-tiny.gif	
6517	/shuttle/technology/sts-newsref/stsref-toc.html	
6309	/history/apollo/apollo-13/apollo-13-patch-small.gif	
5613	/shuttle/missions/sts-71/sts-71-patch-small.gif	
5264	/shuttle/missions/sts-69/images/images.html	
5248	/icons/text.xbm	
5093	/images/construct.gif	
4869	/images/shuttle-patch-small.gif	
4846	/shuttle/missions/sts-69/movies/movies.html	
4791	/shuttle/missions/sts-70/sts-70-patch-small.gif	
4785	/icons/unknown.xbm	
4559	/shuttle/missions/sts-69/liftoff.html	
4464	/facilities/lc39a.html	
4434	/shuttle/resources/orbiters/endeavour.html	
4365	/history/apollo/images/apollo-logo.gif	
4066	/shuttle/missions/sts-70/mission-sts-70.html	
4024	/images/lc39a-logo.gif	
3817	/shuttle/resources/orbiters/endeavour-logo.gif	
3706	/shuttle/technology/sts-newsref/sts_asm.html	
3518	/shuttle/countdown/countdown.html	
3507	/shuttle/missions/sts-71/movies/movies.html	
3377	/shuttle/countdown/video/livevideo.jpeg	
3140	/history/apollo/apollo-11/apollo-11.html	
3130	/shuttle/missions/sts-71/mission-sts-71.html	
3087	/shuttle/missions/sts-70/images/images.html	
2945	/shuttle/missions/sts-71/images/images.html	
2939	/shuttle/missions/sts-73/mission-sts-73.html	
2865	/images/faq.gif	
2864	/shuttle/technology/images/srb_mod_compare_1-small.gif	
2818	/shuttle/technology/images/srb_mod_compare_3-small.gif	
2715	/shuttle/technology/images/srb_mod_compare_6-small.gif	
2701	/history/apollo/apollo-11/apollo-11-patch-small.gif	
2586	/elv/elvpage.htm	
2544	/shuttle/missions/sts-73/sts-73-patch-small.gif	
2385	/shuttle/countdown/video/sts-69-prelaunch-pad.gif	
2343	/shuttle/missions/51-l/mission-51-l.html	
2293	/images/launch-small.gif	
2256	/facilities/tour.html	
2201	/shuttle/missions/51-l/51-l-patch-small.gif	
2172	/images/kscmap-small.gif	
2171	/shuttle/resources/orbiters/challenger.html	
2159	/shuttle/missions/sts-71/movies/sts-71-launch.mpg	
2146	/shuttle/technology/sts-newsref/sts-lcc.html	
2133	/htbin/wais.pl	
2120	/facts/about_ksc.html	
2107	/history/mercury/mercury.html	
2040	/images/mercury-logo.gif	
1991	/elv/elvhead3.gif	
1979	/images/launchpalms-small.gif	
1936	/images/whatsnew.gif	
1929	/history/apollo/apollo-spacecraft.txt	
1915	/facilities/vab.html	
1912	/shuttle/resources/orbiters/columbia.html	
1908	/shuttle/countdown/lps/fr.html	
1904	/shuttle/resources/orbiters/challenger-logo.gif	
1892	/images/ksclogo.gif	
1891	/whats-new.html	
1874	/elv/endball.gif	
1869	/history/apollo/apollo-13/apollo-13-info.html	
1868	/shuttle/missions/sts-74/mission-sts-74.html	
1845	/elv/PEGASUS/minpeg1.gif	
1835	/elv/SCOUT/scout.gif	
```

+ 统计不同响应状态码的出现次数和对应百分比

```
200	89.113923%	1398987	
302	1.687830%	26497	
304	8.544952%	134146	
403	0.010893%	171	
404	0.640492%	10055	
500	0.000191%	3	
501	0.001720%	27	
```

+ 分别统计不同4XX状态码对应的TOP 10 URL和对应出现的总次数

```
403	32	/software/winvn/winvn.html/bluemarb.gif	
403	32	/software/winvn/winvn.html/winvn.gif	
403	32	/software/winvn/winvn.html/wvsmall.gif	
403	12	/ksc.html/images/ksclogo-medium.gif	
403	10	/ksc.html/images/MOSAIC-logosmall.gif	
403	10	/ksc.html/images/NASA-logosmall.gif	
403	10	/ksc.html/images/USA-logosmall.gif	
403	10	/ksc.html/images/WORLD-logosmall.gif	
403	5	/ksc.html/facts/about_ksc.html	
403	4	/ksc.html/shuttle/missions/missions.html	
404	1337	/pub/winvn/readme.txt	
404	1185	/pub/winvn/release.txt	
404	683	/shuttle/missions/STS-69/mission-STS-69.html	
404	319	/images/nasa-logo.gif	
404	253	/shuttle/missions/sts-68/ksc-upclose.gif	
404	209	/elv/DELTA/uncons.htm	
404	200	/history/apollo/sa-1/sa-1-patch-small.gif	
404	166	/://spacelink.msfc.nasa.gov	
404	160	/images/crawlerway-logo.gif	
404	154	/history/apollo/a-001/a-001-patch-small.gif	
```

+ 给定URL输出TOP 100访问来源主机

 `utl = "/ksc.html" `时：

```
edams.ksc.nasa.gov	1020
163.206.89.4	251
128.217.62.1	239
n1144637.ksc.nasa.gov	219
128.217.62.2	184
163.205.3.104	182
n1121796.ksc.nasa.gov	136
163.205.23.76	127
163.205.11.31	123
n1376232.ksc.nasa.gov	116
128.159.144.83	116
n1131455.ksc.nasa.gov	108
n1040681.ksc.nasa.gov	107
163.205.16.75	105
n1123413.ksc.nasa.gov	104
163.205.23.93	104
n1123543.ksc.nasa.gov	101
163.205.154.11	101
163.205.121.3	100
n1378686.ksc.nasa.gov	96
128.159.132.56	94
n1031701.ksc.nasa.gov	91
n1144796.ksc.nasa.gov	90
163.206.104.34	90
derec	89
163.205.16.100	89
n1142702.ksc.nasa.gov	87
n1031729.ksc.nasa.gov	85
163.205.23.72	81
n1121793.ksc.nasa.gov	80
www-c5.proxy.aol.com	79
n167331.ksc.nasa.gov	79
n1123724.ksc.nasa.gov	79
n1123209.ksc.nasa.gov	78
www-b3.proxy.aol.com	77
128.217.61.15	77
piweba3y.prodigy.com	76
128.159.123.58	76
n1031727.ksc.nasa.gov	75
www-d1.proxy.aol.com	72
n1032026.ksc.nasa.gov	72
piweba5y.prodigy.com	71
n1144636.ksc.nasa.gov	71
n1028722.ksc.nasa.gov	71
163.205.12.100	71
piweba4y.prodigy.com	70
n1031857.ksc.nasa.gov	70
n1031627.ksc.nasa.gov	70
128.159.135.73	70
www-b2.proxy.aol.com	69
n1028288.ksc.nasa.gov	69
128.159.177.162	69
www-c4.proxy.aol.com	68
www-d3.proxy.aol.com	67
n1032336.ksc.nasa.gov	67
128.159.146.40	67
128.159.122.14	67
128.159.135.38	66
www-d4.proxy.aol.com	65
www-d2.proxy.aol.com	65
pl01265.ksc.nasa.gov	65
n167440.ksc.nasa.gov	65
128.159.63.159	65
www-c1.proxy.aol.com	64
163.205.23.44	64
163.205.16.90	64
www-c3.proxy.aol.com	63
www-c8.proxy.aol.com	62
www-a1.proxy.aol.com	61
n1123732.ksc.nasa.gov	60
128.159.121.41	60
www-b4.proxy.aol.com	59
n1377014.ksc.nasa.gov	58
163.205.2.180	58
www-c2.proxy.aol.com	57
n1135966.ksc.nasa.gov	57
163.205.58.29	57
n1028244.ksc.nasa.gov	56
163.205.150.22	56
n1121869.ksc.nasa.gov	55
n1000831x.ksc.nasa.gov	55
www-a2.proxy.aol.com	54
n1377004.ksc.nasa.gov	54
n1121985.ksc.nasa.gov	54
163.205.3.38	54
163.205.2.35	54
mpngate1.ny.us.ibm.net	53
ka144063.ksc.nasa.gov	53
163.206.130.46	53
163.205.166.15	53
luncefordm.ksc.nasa.gov	52
128.159.145.21	52
www-b5.proxy.aol.com	51
163.205.16.98	51
128.217.63.27	51
piweba1y.prodigy.com	50
n164576.ksc.nasa.gov	50
192.112.239.200	50
163.206.130.48	50
poppy.hensa.ac.uk	49
n1127413.ksc.nasa.gov	49
n1123735.ksc.nasa.gov	49
n1122774.ksc.nasa.gov	49
n1032824.ksc.nasa.gov	49
n1031629.ksc.nasa.gov	49
128.159.151.155	49
www-c6.proxy.aol.com	48
n874797.ksc.nasa.gov	48
n1031556.ksc.nasa.gov	48
163.205.54.76	48
128.159.123.57	48
n1123728.ksc.nasa.gov	47
n1028286.ksc.nasa.gov	47
128.217.61.118	47
n167437.ksc.nasa.gov	46
n1373372.ksc.nasa.gov	46
n1127424.ksc.nasa.gov	46
n1043374.ksc.nasa.gov	46
n1032601.ksc.nasa.gov	46
128.159.122.233	46
n167287.ksc.nasa.gov	45
n1376224.ksc.nasa.gov	45
n1032553.ksc.nasa.gov	45
163.205.2.204	45
hobbes.ksc.nasa.gov	44
163.206.104.17	44
163.205.23.117	44
128.159.165.144	44
n1127153.ksc.nasa.gov	43
n1123605.ksc.nasa.gov	43
n1032025.ksc.nasa.gov	43
hokie.ksc.nasa.gov	43
163.205.23.125	43
163.205.16.66	43
163.205.16.104	43
n164847.ksc.nasa.gov	42
163.205.3.43	42
163.205.2.105	42
163.205.2.100	42
128.159.112.24	42
n862478.ksc.nasa.gov	41
n1142695.ksc.nasa.gov	41
n1132658.ksc.nasa.gov	41
n104968.ksc.nasa.gov	41
n1032130.ksc.nasa.gov	41
n1027538.ksc.nasa.gov	41
intgate.raleigh.ibm.com	41
163.206.113.43	41
163.205.3.60	41
163.205.16.6	41
128.159.137.43	41
n868791.ksc.nasa.gov	40
n861692.ksc.nasa.gov	40
n1142699.ksc.nasa.gov	40
n1123320.ksc.nasa.gov	40
n1043354.ksc.nasa.gov	40
128.159.144.47	40
128.159.135.66	40
128.159.122.59	40
n1388869.ksc.nasa.gov	39
n1127162.ksc.nasa.gov	39
m35967.ksc.nasa.gov	39
192.112.239.223	39
163.205.154.17	39
163.205.12.176	39
163.205.12.102	39
128.217.62.48	39
128.159.132.61	39
128.159.122.72	39
n1122121.ksc.nasa.gov	38
163.205.26.54	38
163.205.16.21	38
palona1.cns.hp.com	37
n868711.ksc.nasa.gov	37
n167489.ksc.nasa.gov	37
disarray.demon.co.uk	37
n1376640.ksc.nasa.gov	36
n1144635.ksc.nasa.gov	36
n1028274.ksc.nasa.gov	36
duckling.omsi.edu	36
163.206.104.94	36
163.205.23.43	36
128.159.154.116	36
128.159.147.50	36
128.159.146.35	36
webgate1.mot.com	35
n872545.ksc.nasa.gov	35
n868732.ksc.nasa.gov	35
n1388866.ksc.nasa.gov	35
n1032042.ksc.nasa.gov	35
163.205.56.149	35
n1127160.ksc.nasa.gov	34
n1032036.ksc.nasa.gov	34
163.205.2.178	34
128.159.140.127	34
128.159.135.72	34
n1132651.ksc.nasa.gov	33
n1043350.ksc.nasa.gov	33
e659229.boeing.com	33
163.206.133.52	33
163.205.2.132	33
n1032613.ksc.nasa.gov	32
n1031560.ksc.nasa.gov	32
n1028246.ksc.nasa.gov	32
ftp.mel.aone.net.au	32
163.205.16.96	32
163.205.11.210	32
128.159.77.122	32
128.159.148.35	32
128.159.144.38	32
128.159.129.88	32
n868333.ksc.nasa.gov	31
n862263.ksc.nasa.gov	31
n1151841.ksc.nasa.gov	31
n1122113.ksc.nasa.gov	31
n1043379.ksc.nasa.gov	31
n1032445.ksc.nasa.gov	31
n1032131.ksc.nasa.gov	31
163.205.3.48	31
163.205.23.158	31
163.205.12.7	31
128.159.127.18	31
1032015.ksc.nasa.gov	31
news.ti.com	30
n1132317.ksc.nasa.gov	30
n1121101.ksc.nasa.gov	30
n1028279.ksc.nasa.gov	30
163.205.11.218	30
128.159.104.80	30
uncle_albert.ksc.nasa.gov	29
n868740.ksc.nasa.gov	29
n1132318.ksc.nasa.gov	29
ka146056.ksc.nasa.gov	29
163.206.137.11	29
163.206.130.61	29
163.205.2.167	29
128.159.144.138	29
128.159.137.55	29
128.159.117.23	29
n1031723.ksc.nasa.gov	28
163.205.80.44	28
128.217.63.33	28
threefers.ksc.nasa.gov	27
n869046.ksc.nasa.gov	27
n1142703.ksc.nasa.gov	27
163.205.23.103	27
163.205.1.18	27
128.159.144.124	27
128.159.123.38	27
n1373370.ksc.nasa.gov	26
n1043312.ksc.nasa.gov	26
n1031669.ksc.nasa.gov	26
ka146023.ksc.nasa.gov	26
columbia.acc.brad.ac.uk	26
163.206.10.6	26
163.205.51.59	26
163.205.23.63	26
163.205.23.109	26
128.159.154.153	26
www-proxy.crl.research.digital.com	25
piweba2y.prodigy.com	25
n868906.ksc.nasa.gov	25
n1375918.ksc.nasa.gov	25
n1373377.ksc.nasa.gov	25
n1122768.ksc.nasa.gov	25
n1121107.ksc.nasa.gov	25
coopwf93.sp.trw.com	25
163.205.18.227	25
163.205.16.25	25
163.205.12.31	25
128.159.140.128	25
128.159.121.108	25
www-b1.proxy.aol.com	24
pl23645.ksc.nasa.gov	24
n1144878.ksc.nasa.gov	24
n1121149.ksc.nasa.gov	24
n1031626.ksc.nasa.gov	24
192.112.239.106	24
163.205.12.144	24
128.217.62.29	24
128.159.76.97	24
vagrant.vf.mmc.com	23
n871507.ksc.nasa.gov	23
n1377025.ksc.nasa.gov	23
n1122099.ksc.nasa.gov	23
n1043376.ksc.nasa.gov	23
n1032427.ksc.nasa.gov	23
n1031533.ksc.nasa.gov	23
m36462.ksc.nasa.gov	23
keyhole.es.dupont.com	23
192.112.239.213	23
163.205.52.70	23
163.205.166.9	23
128.217.61.99	23
128.159.154.119	23
128.159.144.97	23
www-c9.proxy.aol.com	22
worf.ksc.nasa.gov	22
titan	22
n872707.ksc.nasa.gov	22
n870631.ksc.nasa.gov	22
n868746.ksc.nasa.gov	22
n1142807.ksc.nasa.gov	22
n1032907.ksc.nasa.gov	22
n1028691.ksc.nasa.gov	22
gw3.att.com	22
gw1.att.com	22
bit.omsi.edu	22
192.112.239.46	22
163.205.80.16	22
163.205.46.93	22
163.205.33.9	22
163.205.23.126	22
163.205.23.12	22
163.205.2.134	22
163.205.2.107	22
163.205.150.14	22
128.159.165.148	22
128.159.135.97	22
128.159.112.32	22
sdn_b6_f02_ip.dny.rockwell.com	21
perry.ksc.nasa.gov	21
nasa-fsd.ksc.nasa.gov	21
n874364.ksc.nasa.gov	21
n868730.ksc.nasa.gov	21
n1122723.ksc.nasa.gov	21
n104784.ksc.nasa.gov	21
megabyte.omsi.edu	21
host62.ascend.interop.eunet.de	21
gretzky.me.fit.edu	21
bocagate.bocaraton.ibm.com	21
163.206.133.51	21
163.206.113.62	21
163.205.3.61	21
163.205.23.74	21
163.205.2.205	21
163.205.18.123	21
163.205.16.23	21
163.205.16.17	21
163.205.16.105	21
163.205.16.103	21
163.205.12.40	21
163.205.11.36	21
128.217.61.57	21
128.217.61.136	21
128.159.122.234	21
n868759.ksc.nasa.gov	20
n868370.ksc.nasa.gov	2
```

