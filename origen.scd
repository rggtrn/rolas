RGGTRN.turboCargar;
t = TempoClock.tempo = 80/60;
s.record("~/tour2018/origen.wav".standardizePath);
s.stopRecording;

Vox.decir(RGGTRN.rggtrn, db: -17)
///uno
Ritmo.toca (congaCDb: Pseq ([-45, -45, -23, -45, -23, -45, -45, -45, -23, -45, -45, -23,-45, -45, -45, -23], inf) , 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) , campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30]*20,inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);

//////dos
Teclado.toca (inst: 'pad4', db: -32, nota: Pseq ([63, 60, 65, 61, 66, 66, 58, 61, 65, 66, 63, 63]-12, inf),dur: Pseq ([1, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5]/2, inf), rel: 0.5);

Bajo.toca (db: -25, inst: 'bajo2', nota: Pseq ([Pseq ([66]-12,  1), Pseq (#[r,  65],  1), Pseq ([60, 65, 66, 61, 54, 60, 65, 66, 61, 60], inf)], inf),  dur: Pseq ([Pseq([8]/2, 1), Pseq([7.5, 0.5]/2, 1), Pseq ([1.5, 1.5, 2.5, 1.5, 1]/2, inf)], inf), rel: Pseq ([Pseq ([8], 1), Pseq ([8], 1), Pseq ([1.5], inf)]));


Mel.toca (db: -33, inst: 'melGliss', nota: Pseq ([66]-12,  1), dur: Pseq([7.5, 0.5]/2, 1), rel: Pseq ([8], 1), atk: 0.010);

//////tres

Ritmo.toca (bomboDb: -300, bomboFreq:0, bomboDur: 1, congaCDb: Pseq ([-43, -43, -22, -43, -22, -43, -43, -43, -23, -43, -43, -23,-43, -43, -43, -23], inf) , 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) ,  campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30],inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);

//////cuatro

Mel.toca (db: -33, inst: 'melGliss', nota: Pseq ([66]-12,  1), dur: Pseq([7.5, 0.5]/2, 1), rel: Pseq ([8], 1), atk: 0.010);
Teclado.toca (inst: 'pad4', db: -30, nota: Pseq ([63, 63, 60, 65, 65, 61, 66, 66, 58, 61, 65, 66, 63, 63], inf), dur: Pseq ([0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5]/2, inf),rel: 0.5);


Bajo.toca (db: -27, inst: 'bajo2', rel: 1.5, nota: Pseq ([60, 65, 66, 61, 54, 60, 65, 66, 61, 60],  inf),  dur: Pseq([1.5, 1.5, 2.5, 1.5, 1]/2, inf)+Pwhite(0.0001, 0.0002, inf));



///tres
Ritmo.toca (guiraDb:-30, congaCDb: Pseq ([-43, -43, -22, -43, -22, -43, -43, -43, -23, -43, -43, -23,-43, -43, -43, -23], inf) , 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) ,  campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30],inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);




Mel.toca (inst: 'pad4', db: -30, nota: Pseq ([63, 60, 65, 61, 66, 66, 58, 61, 65, 66, 63, 63]-12, inf), dur: Pseq ([1, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5]/2, inf) + Pwhite(0.0001, 0.0005, inf));



Ritmo.detener;  Bajo.detener; Teclado.detener; Mel.detener