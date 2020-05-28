
RGGTRN.turboCargar;
t = TempoClock.tempo = 100/60;

// uno
(
Ritmo.toca (guiraDb:-300, congaCDb: Pseq ([-43, -43, -22, -43, -22, -43, -43, -43, -23, -43, -43, -23,-43, -43, -43, -23]+10, inf) , 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) ,  campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30]*0.75,inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);

Bajo.toca(inst:'bajo2', db:-15,
	nota: Pseq([53, \r, 60, 53, \r, 60, 55, \r, 62, 55, \r, 62, 53, \r, 60, 53, \r, 60, 55, 54], inf),
	// rel: Pseq ([0.75, 0.25,1], inf),
	dur: Pseq ([Pseq ([1, 0.5, 0.5], 6), Pseq ([2], 1), Pseq ([2], 1)], inf ),
	pan: 0, rel: Pseq ([Pseq ([1, 0.5, 0.5], 6), Pseq ([1], 1), Pseq ([1], 1)], inf ));

//\r, 62, 55, \r, 62, 55, \r, 62,  53, \r, 60, 55-12, \r, 62-12
Teclado.toca(inst: 'sharp', nota: Pseq(#[62, r, 62,   62, r, 65,  65,  62, r,   62, r, r]-12,inf), dur: 1/4, atk:0.05, rel: 0.25, db: -15);
)


Ritmo.toca (guiraDb:-20, congaCDb: Pseq ([-43, -43, -22, -43, -22, -43, -43, -43, -23, -43, -43, -23,-43, -43, -43, -23]+10, inf) , 	       congaCFreq:Pseq (#[4, 4, 4, 4, 4, 4, 4, 4,  4, 4, 4, 4, 4, 4, 4, 4], inf) ,  campanaDb: Pseq ([-25, -22, -24, -30, -30, -25, -30, -30, -25, -30, -30]*0.75,inf), campanaDur: Pseq ([0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25], inf), campanaFreq: Pseq ([7, 18, 7, 18, 18,7, 18, 18, 7, 18, 18], inf), congaOfreq: Pseq (#[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,  0, 0, 1, 1, ], inf), congaODb: -200);

Bajo.detener;

Bajo.toca(inst:'bajo2', db:-15, nota: Pseq([62,65,69], inf), pan: 0, rel: Pseq ([1, 0.5, 0.5], inf), dur: Pseq([1, 0.5, 0.5], inf));

Teclado.toca(inst: 'sharp', nota:  Pseq([Pseq(#[62, r, 62,   62, r, 65,  65,  62, r,   62, r, r]-12,1),Pseq(#[62, r, 62,   62, 64, 65,  65,  62, 64,   62, r, 69]-12,1)],inf) , dur: 1/4, atk:0.05, rel: 0.25, db: -15);

Bajo.detener;

Teclado.toca(inst: 'sharp', nota: Pseq(#[62, r, 62,   62, 64, 65,  65,  62, 64,   62, r, 69]-24, inf) , dur: 1/4, atk:0.05, rel: 0.25, db: -15);

Teclado.toca(inst: 'sharp', nota: Pseq([Pseq(#[62, r, 62,   62, r, 65,  65,  62, r,   62, r, r]-12,3),Pseq(#[62, r, 62,   62, 64, 65,  65,  62, 64,   62, r, 69]-12,1)],inf), dur: 1/4, atk:0.05, rel: 0.25, db: -15);


Teclado.toca(inst: 'sharp', nota: Pseq(#[62, r, r, r, 62, r, r, r, 62, 62, r, r, 62, r, r, r]-24,inf), dur: 1/4, atk:0.05, rel: 0.25, db: -15);



