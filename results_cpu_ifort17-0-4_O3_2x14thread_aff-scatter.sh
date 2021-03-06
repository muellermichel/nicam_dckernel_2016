local rank: 0, local size: 2, num. threads: 14
'./physicskernel_microphysics.exe' -> '/gs/hs0/tga-ASUCA/nicam_dckernel_2016/bin/physicskernel_microphysics.exe'
'./vgrid94.dat' -> '/gs/hs0/tga-ASUCA/nicam_dckernel_2016/physicskernel_microphysics/data/vgrid94.dat'
'./snapshot.microphysics.pe000003' -> '/gs/hs0/tga-ASUCA/nicam_dckernel_2016/physicskernel_microphysics/data/snapshot.microphysics.pe000003'
'./check.microphysics.pe000003' -> '/gs/hs0/tga-ASUCA/nicam_dckernel_2016/physicskernel_microphysics/data/check.microphysics.pe000003'
 [KERNEL] physicskernel_microphysics
 *** Start  initialize
 grid:        16641          96           1
 _OPENMP:       201511
 *** microphysics type = NSW6

 *** Calculation flag of sedimentation:
 *** QV => NO
 *** QC => NO
 *** QR => YES
 *** QI => NO
 *** QS => YES
 *** QG => YES

 *** Precipitation(sedimentation) scheme:
 *** => Flux-Semilag_new

 *** Use setting of Roh and Satoh(2014)?:
 *** => Yes

 *** Use explicit ice generation scheme?:
 *** => Yes

 *** Autoconversion & Accretion scheme for QC->Qr:
 *** => Khairoutdinov and Kogan(2000)
 *** Finish initialize
 *** Start  kernel
 ### Before ###
 +before [rhog            ] max=  1.4261916969163180E+00,min=  3.2367783983461257E-03,sum=  1.0248410211120821E+06
 +before [rhogvx          ] max=  3.1786358054509297E+01,min= -3.4870715046555731E+01,sum=  3.6017345074875867E+06
 +before [rhogvy          ] max=  3.1983465347451965E+01,min= -3.3928228035595438E+01,sum= -2.5088302433390892E+06
 +before [rhogvz          ] max=  2.2329128616276009E+01,min= -2.2176975924800558E+01,sum= -5.4039842567924713E+05
 +before [rhogw           ] max=  2.2149951554086866E-01,min= -8.3317411779331285E-01,sum= -9.2993456637532336E+02
 +before [rhoge           ] max=  2.6235766583946161E+05,min=  5.4807643411872823E+02,sum=  1.9601165989718774E+11
 +before [QV              ] max=  1.8970270074208841E-02,min=  0.0000000000000000E+00,sum=  3.1319235879624944E+03
 +before [QC              ] max=  5.9210517968628657E-04,min= -1.0741182821812813E-24,sum=  8.3327866876455370E-01
 +before [QR              ] max=  1.1737567766542870E-06,min= -3.4404205577678602E-31,sum=  3.0395695869043170E-04
 +before [QI              ] max=  6.8631930422805655E-05,min= -8.3844186461777350E-26,sum=  4.1346781960747608E-01
 +before [QS              ] max=  6.5361311677007428E-06,min= -6.0786107446046276E-27,sum=  9.5026401516805512E-02
 +before [QG              ] max=  9.9767875757641173E-08,min= -3.9336018325834082E-35,sum=  8.2529013852468384E-07
 ### After ###
 +after  [rhog            ] max=  1.4261916969163180E+00,min=  3.2367783983461257E-03,sum=  1.0248410211668796E+06
 +after  [rhogvx          ] max=  3.1786358054509297E+01,min= -3.4870715200877569E+01,sum=  3.6017345079173297E+06
 +after  [rhogvy          ] max=  3.1983465347451965E+01,min= -3.3928228035661668E+01,sum= -2.5088302440672847E+06
 +after  [rhogvz          ] max=  2.2329128623226076E+01,min= -2.2176975924800558E+01,sum= -5.4039842605599249E+05
 +after  [rhogw           ] max=  2.2149951554086866E-01,min= -8.3317411779331285E-01,sum= -9.2993456904896379E+02
 +after  [rhoge           ] max=  2.6235766583946167E+05,min=  5.4807643411872823E+02,sum=  1.9600092279401938E+11
 +after  [QV              ] max=  1.8970270074208841E-02,min=  0.0000000000000000E+00,sum=  3.1318702301640751E+03
 +after  [QC              ] max=  6.2085021328136397E-04,min=  0.0000000000000000E+00,sum=  8.8330771669952424E-01
 +after  [QR              ] max=  1.2347315916376364E-06,min=  0.0000000000000000E+00,sum=  3.2200494602942215E-04
 +after  [QI              ] max=  6.9299540146225966E-05,min=  0.0000000000000000E+00,sum=  4.1418675446765590E-01
 +after  [QS              ] max=  6.7013486255204249E-06,min=  0.0000000000000000E+00,sum=  9.7672444301581479E-02
 +after  [QG              ] max=  1.4631003607924080E-07,min=  0.0000000000000000E+00,sum=  1.3699393240738917E-06
 *** Finish kernel
 ### Check ###
 +check  [check_rhog      ] max=  5.0626169922907138E-12,min= -1.4747092436095954E-12,sum= -1.2059661602670246E-10
 +check  [check_rhogvx    ] max=  4.8540726993451244E-11,min= -1.5642598327758606E-11,sum= -5.3443867070696949E-10
 +check  [check_rhogvy    ] max=  2.9643842935911380E-11,min= -3.8473224606150325E-11,sum=  8.7373166305481232E-10
 +check  [check_rhogvz    ] max=  1.7783108319235907E-11,min= -3.0207836232420959E-11,sum=  4.9090170867367462E-10
 +check  [check_rhogw     ] max=  3.6093350530563839E-13,min= -7.6272321791748254E-13,sum=  5.4313126964076832E-12
 +check  [check_rhoge     ] max=  1.1641532182693481E-10,min= -7.1497319893736858E+01,sum= -1.0776720015302433E+07
 +check  [QV              ] max=  4.0932895639233385E-07,min= -2.7807046225050182E-05,sum= -3.7963720189637312E-02
 +check  [QC              ] max=  2.7807046225049748E-05,min= -4.0932905538366303E-07,sum=  3.7965023327871827E-02
 +check  [QR              ] max=  2.0210040839240542E-11,min= -3.1763735522036263E-22,sum=  3.3737971724916410E-09
 +check  [QI              ] max=  1.9067742179908567E-10,min= -5.3637422603185941E-10,sum= -1.0367761548793259E-06
 +check  [QS              ] max=  4.7746961589633586E-11,min= -1.2116527009913442E-10,sum= -2.6910244100755565E-07
 +check  [QG              ] max=  8.2574226107083806E-13,min= -5.5229191280467249E-11,sum= -7.5400921928469898E-10

 *** Computational Time Report
 *** Rap level is            2
 *** ID=001 : Cloud_Microphysics_kernel                                        T=     7.325 N=        1
 *** ID=002 : ____MP_NSW6                                                      T=     5.648 N=        1
 *** ID=003 : _kernel_partM12                                                  T=     0.785 N=        1
 *** ID=004 : _kernel_partM3                                                   T=     3.868 N=        1
 *** ID=005 : ____Precipitation                                                T=     3.651 N=        1
 *** ID=006 : CNV_rhogkin                                                      T=     0.130 N=        2
 *** ID=007 : _kernel_partM4                                                   T=     0.234 N=        1
 *** ID=008 : ____Saturation_Adjustment                                        T=     0.216 N=        1

 real	0m2.591s
user	0m9.108s
sys	0m1.403s