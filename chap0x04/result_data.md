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
```

