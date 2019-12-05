RGGTRN.turboCargar;
t = TempoClock.tempo = 90/60;

Vox.decir (buffer: Prand ([RGGTRN.internacional], inf), db:-17, rel: 35, pan: Pseq ([-0.8, 0, 0.8], inf));

///////uno////////////////
(
// Ritmo.toca(campanaDb:-200, campanaDur: 1, guiraDb: -200, timbalesDur: Pseq ([0.25], inf), timbalesNum: 0, congaCDb: Pseq ([-14, -17, -15, -20 ], inf),  congaODb: -200);

////usa este, no el de arriba!
// Ritmo.toca (bomboDb: -300, bomboFreq:0, bomboDur: 1, congaCDb: Pseq ([-43, -43, -22, -43, -22, -43, -43, -43, -23, -43, -43, -23,-43, -43, -43, -23], inf), congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf), campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30],inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);
// Bajo.detener;
// Pbindef (\jarana).stop;
// Pbindef (\hi).stop;
// Pbindef (\tar).stop;
// Mel.detener;
// Mel2.detener;
)

////////dos///////////
Bajo.toca(inst: 'bajo2', db: -30, nota: Pseq ([62, 69, 65], inf), dur: Pseq ([1.5, 1.5, 13]/2,inf), rel: Pseq ([1.5, 1.5, 10]/1.5,inf));

//////////tres////////////////
Ritmo.toca(campanaDb:-200, campanaDur: 1, guiraDb: -24, timbalesDur: Pseq ([0.5], inf), timbalesNum: 0, congaCDb: Pseq ([-14, -17, -15, -20 ], inf) ,congaODb: -22);

//////////cuatro////////////////

Bajo.toca(inst: 'bajo2', db: -30, nota:Pseq ([Pseq ([62, 69, 65], 1),  Pseq ([62, 69, 65, 60], 1)], inf), dur: Pseq ([Pseq ([1.5, 1.5,  13]/2,1), Pseq ([1.5, 1.5,  13]/2,1)], inf), rel:Pseq ([Pseq ([1.5, 1.5, 13]/1.5,1), Pseq ([1.5, 1.5,  13]/1.5,1)], inf));


Ritmo.toca(campanaPan: -0.8, campanaDb: -25, campanaDur: 1, guiraDb: -25, timbalesDur: Pseq ([0.25], inf), timbalesNum: 0, congaCDb: Pseq ([-17, -20, -18, -24]*1.25, inf), congaOfreq: Prand (#[0, r, 0.5, r, 1], inf),  congaODb: Pseq ([-23, -25, -28, -30], inf));
///////////////cuatro
(
Ritmo.toca(campanaPan: -0.8, campanaDb: -25, campanaDur: 1, guiraDb: -25, timbalesDur: Pseq ([0.25], inf), timbalesNum: 0, congaCDb: Pseq ([-14, -17, -15, -20 ], inf), congaOfreq: Pseq (#[r,r,r,r,  r, r, 1,r,   r,r,r,r,   r, r, 1,1], inf), congaODb: -19);

Bajo.toca(inst: 'bajo2', db: -20, nota: Pseq ([62, 69, 65, 60, 64], inf), dur: Pseq ([1.5, 1.5, 1,  3, 1]/2,inf), rel: Pseq ([1.5, 1.5, 1, 3, 1]/1.5,inf));

Teclado.toca(inst: 'pad3', pan: 0.8, db: Pseq ([-24, -27, -30, -34]*1.125, inf),  nota: Pseq ([[62, 74], [65, 77], [69, 81], [62, 72], [65, 77], [69, 81], [60, 72], [64, 76], [67, 79], [60, 72], [64, 76], [67, 79]]-12, inf), dur: Pseq ([1.5, 1.5, 1]/4,inf), rel: Pseq ([1.5, 1.5, 1]/3,inf));
)

////////////cinco//////////////
Mel.toca(inst: 'pluck2', pan: -0.8, nota: Pseq ([69, 62], inf) + Pseq ([0, 12], inf), dur: Pseq ([0.5, 0.25, 0.75, 0.5], inf), rel: Pseq ([4, 2], inf), db:-27);
(
Mel.toca(inst: 'pluck2', pan: -0.8, nota: ~nota + Pseq ([0, 12], inf), dur: Pseq ([0.25, 0.5], inf), rel: Pseq ([4, 2], inf),db:-25);

Mel2.toca(inst: 'pluck2', pan: 0.8, nota:  ~nota + Pseq ([0, 24], inf), dur: Pseq ([0.25, 0.5], inf), rel: Pseq ([4, 2], inf), db:-25);
)

// 62, 60, 64, 67, 60, 62
~nota = Pseq (#[r], inf);
////////////////seis
Bajo.toca(inst: 'bajo2', db: -40, nota: Pseq ([62, 69, 65, 60, 69, 64], inf), dur: Pseq ([1.5, 1.5, 1,  1.5, 1.5, 1]/2,inf), rel: Pseq ([1.5, 1.5, 1, 1.5, 1.5, 1]/1.5,inf));

////////////////siete
Bajo.toca(inst: 'bajo2', db: -40, nota: Pseq ([62, 69, 65, 60, 64], inf)+ Prand (#[0, r], inf), dur: Pseq ([1.5, 1.5, 1,  3, 1]/2,inf), rel: Pseq ([1.5, 1.5, 1, 3, 1]/1.5,inf));

//////////////////////solo de timbal
Ritmo.toca(campanaDb:-150, campanaDur: Prand ([1], inf), guiraDb: -30, timbalesAmp: 3, timbalesPan: Prand ([-0.8, 0.8], inf),timbalesFreq: Prand (#[0, -1, 7], inf), timbalesDur: Pseq ([0.25], inf), timbalesNum:inf , congaCDb: Pxrand ([-14, -17, -15, -20 ]*3, inf), congaODb: -20);

////////////////////solo de conga
Ritmo.toca(campanaDb:-150, campanaDur: Prand ([1], inf), guiraDb: -30, timbalesAmp: 5, timbalesPan: Prand ([-0.8, 0.8], inf),timbalesFreq: Prand (#[0, 1, 2], inf), timbalesDur: Pseq ([0.25, 0.5], inf), timbalesNum: inf, congaCDb: Pxrand ([-14, -17, -15, -20 ]*2, inf),  congaODb: Prand ([-20,-25, -20, -30], inf), congaOfreq: Pseq (#[0.5, r, 0, r, 1], inf));

