RGGTRN.turboCargar;
t = TempoClock.tempo = 90/60;

MandelHub.join("luis", action: {m = MandelHub.instance}); // este si eres seguidor
Vox.decir (buffer: Prand ([RGGTRN.si], inf), db:-14, rel: 35, pan: Pseq ([-0.8, 0, 0.8], inf));

///uno

Ritmo.toca (congaCDb: Pseq ([-45, -45, -23, -45, -23, -45, -45, -45, -23, -45, -45, -23,-45, -45, -45, -23]+12, inf), 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) , campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30]*15,inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);


//dos
(Bajo.toca (db: -30, inst: 'bajo2', nota: Pseq ([Pseq ([66],  1), Pseq (#[r,  65],  1), Pseq ([60, 65, 66, 61, 54, 60, 65, 66, 61, 60], inf)], inf),  dur: Pseq ([Pseq([8]/2, 1), Pseq([7.5, 0.5]/2, 1), Pseq ([1.5, 1.5, 2.5, 1.5, 1]/2, inf)], inf), rel: Pseq ([Pseq ([8], 1), Pseq ([1], inf), Pseq ([1], inf)]));
)

(
Mel.toca (db: -30, inst: 'melGliss', nota: Pseq ([66]-12,  1), dur: Pseq([7.5, 0.5]/2, 1), rel: Pseq ([8], 1), atk: 0.010);
Teclado.detener;)

//////tres
Vox.decir(RGGTRN.rggtrn, db: -17);

Ritmo.toca (guiraDb:-300, congaCDb: Pseq ([-43, -43, -22, -43, -22, -43, -43, -43, -23, -43, -43, -23,-43, -43, -43, -23]+10, inf) , 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) ,  campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30]*0.75,inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);

//////cuatro

Ritmo.toca (guiraDb:-27, congaCDb: Pseq ([-43, -43, -22, -43, -22, -43, -43, -43, -23, -43, -43, -23,-43, -43, -43, -23]+10, inf) , 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) ,  campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30]*0.75,inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);

//empieza aqui
Mel2.toca (db: -20, inst: 'pluckTri', nota: Pstutter (4.rand+1, Pseq ([60, 61, 58, 65], inf)) + Pseq ([0, 12], inf), dur: Pseq([0.5]/2, inf), rel: Pseq ([0.5], inf), atk: 0.010);

///////cinco
Mel.toca (db: -17, inst: 'pad4', nota: Pseq (#[r, r, 63]-12,  inf), dur: Pseq([3, 0.5, 0.5], inf), rel: Pseq ([0.5], inf), atk: 0.010);

///seis
Mel.toca (db: -27, inst: 'pad3', nota: Pstutter (2.rand+3, Pseq ([60, 61, 58, 65],  inf)), dur: Pseq([0.5]/2, inf), rel: Pseq ([0.5], inf), atk: 0.010, pan: 0);


///siete

Teclado.toca (inst: 'pad4', db: -24, nota:  Pseq ([Pseq ([63, 60, 65, 61, 66, 66, 58, 61, 65, 66, 63, 63]-12, 2), Pseq ([63, 63, 60, 65, 65, 61, 66, 66, 58, 61, 65, 66, 63, 63], 2), Pseq ([63], 1)]), dur: Pseq ([Pseq ([1, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5]/2, 2), Pseq ([0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5]/2, 2), Pseq ([4], 1)]),rel: Pseq ([Pseq ([0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], 2),Pseq ([0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], 2), Pseq ([4], 1)]));


//////siete
Mel.toca (db: -25, inst: Prand(['pluck', 'pluckTri'], inf), nota: Pstutter (1, Pseq ([[60, 65], [61, 68], [58, 61], [65, 66]], inf)), dur: Pseq([0.5]/2, inf), rel: Pseq ([0.25], inf), atk: 0.09, arpegiar: Prand ([1.5, 1, 0.5], inf));


/////////////////ocho
Bajo.toca (db: -30, inst: 'bajo2', nota: Pxrand ([Pseq ([60, 65, 66, 61, 54, 60, 65, 66, 61, 60], 1), Pseq (#[60, 65, 66, 61, r, r, 60, 65, 66, 61, r, r], 1)], inf), dur: Pseq ([ Pseq ([1.5, 1.5, 2.5, 1.5, 1]/2, 2), Pseq ([1, 0.5, 0.5], 4)], inf), rel:Pseq ([ Pseq ([1.5], 10), Pseq ([1, 0.5, 0.5, 2, 0.5, 0.5], 2)], inf));

//////////////////////solo de timbal
// Ritmo.toca(campanaDb:-150, campanaDur: Prand ([1], inf), guiraDb: -20, timbalesAmp: 3, timbalesPan: Prand ([-0.8, 0.8], inf),timbalesFreq: Prand (#[0], inf), timbalesDur: Pseq ([0.25, 0.25], inf), timbalesNum:inf , congaCDb: Pxrand ([-14, -17, -15, -20 ]*3, inf), congaODb: -20);

////////////////////solo de conga
Ritmo.toca(campanaDb:-150, campanaDur: Prand ([1], inf), guiraDb: -30, timbalesAmp: 5, timbalesPan: Prand ([-0.8, 0.8], inf),timbalesFreq: Prand (#[0, 1, 2], inf), timbalesDur: Pseq ([0.25, 0.5], inf), timbalesNum: inf, congaCDb: Pxrand ([-14, -17, -15, -20 ]*2, inf),  congaODb: Prand ([-20,-25, -20, -30]*0.75, inf), congaOfreq: Pseq (#[0.5, r, 0, 1, 2]*4, inf), congaODur: Pseq([0.25, 0.5], inf));



Ritmo.detener;  Bajo.detener; Teclado.detener; Mel.detener; Mel2.detener;
