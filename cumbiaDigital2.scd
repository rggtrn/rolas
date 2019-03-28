RGGTRN.turboCargar;
t = TempoClock.tempo = 100/60;
MandelHub.join("luis", action: {m = MandelHub.instance}); // este si eres seguidor


//hola banda!!

Vox.decir (buffer: Prand ([RGGTRN.sabro], inf), db:-17, rel: 35, pan: Pseq ([-0.8, 0, 0.8], inf));

Vox.decir (buffer: Prand ([RGGTRN.rggtrn2], inf), db:-15, rel: 35, pan: Pseq ([-0.8, 0, 0.8], inf));


/////////uno
((
Pbindef (\tar,
	\instrument, \tarola2,
//\buf, Prand ([RGGTRN.timbal], inf),
	\dur, Pseq ([1, 0.5, 0.5, 1, 1]/2, inf),
		\freq, Pseq ([\r, \r, 100, \r, 100, \r, \r, 100, \r, 100], inf)+ Prand((0.1 .. 0.5), inf),
	\db, Pseq ([\r,\r, -5, \r, -7], inf),
).play(quant:4);
);
)


(
Ritmo.toca (bomboDur: 1, bomboDb: Pseq([-15, -100, -100, -100],inf), bomboFreq: Pseq (#[0,r, r, r], inf), guiraFreq: Pseq([Pseq(#[1,r, 1, 1],3), Pseq (#[1, r, 1, 1, r], 1)], inf) ,
	guiraDura: Pseq([Pseq([1/64,1/32,1/16,1/16]*(80/60) ,3), Pseq([1/64,1/32,1/16,1/16, 1/16]*(80/60) ,1)], inf),
	guiraDur: Pseq ([Pseq ([0.5, 0.5, 0.5, 0.5]/2, 3), Pseq ([0.5, 0.5, 0.25, 0.25, 0.5]/2, 1)], inf),  guiraPan: 0.8, guiraDb: Pseq ([Pseq ([-20, -20, -25, -25], 3), Pseq ([-20, -20, -25, -25, -25], inf)], inf)*400,  campanaDb: Pseq([ Pseq ([-80, -80, -80, -80, -20, -20]/3, 1), Pseq ([-80, -80, -80, -80, -20, -80]/3, 1)], inf), campanaDur: Pseq ([1, 1,1, 0.5, 0.25, 0.25], inf));
);


(
Pbindef (\jarana,
	\instrument,  \mel2,
	\midinote, Pseq([\r, [57, 60, 64], \r, [57, 60, 64], \r, [57, 60, 64], \r, [57, 60, 64], \r, [53, 57, 60], \r, [53, 57, 60], \r,  [53, 57, 60], \r,  [53, 57, 60], \r, [55, 59, 62], \r, [55, 59, 62], \r,  [55, 59, 62], \r,  [55, 59, 62], \r, [53, 57, 60], \r, [53, 57, 60],  \r, [55, 59, 62], \r, [55, 59, 62]], inf) +12,
	\dur, 0.5,
	\pan, Pseq([0], inf),
	\rel, 0.3,
	//\rel, Pxrand ([0.7, 0.4, 0.5], inf),
 	\strum, Pseq ([0], inf),

	\db, Pseq([\r, -20], inf),
).play(quant:4);
);

///////////////////dos

(
/*(
Mel.toca (pan: Prand([-0.8, 0, 0.8], inf), nota: Pseq ([[57, 64]], inf),
	db: -25, inst: 'mel4', dur: Prand ([0.5], inf), rel: Prand ([2], inf), arpegiar: 1/4)
);*/

(
Mel2.toca (pan: Prand([-0.8, 0, 0.8], inf), nota: Pseq ([Pseq ([57]-12, 16), Pseq ([53]-12, 16), Pseq ([55]-12, 16), Pseq ([53]-12, 8),Pseq([55]-12, 8)], inf),
	db: -24, inst: 'mel4', dur: Prand ([0.25], inf), rel: Prand ([1, 2], inf), arpegiar: 1/4)
);

/*(
Mel2.toca (pan: Prand([-0.8, 0, 0.8], inf), nota: Pseq ([[67, 64, 67, 60]], inf) + Prand([12, 0], inf),
	db: -15, inst: 'mel2', dur: Pseq ([0.25, 0.75, 0.5, 0.5], inf), rel: Prand ([0.75], inf), arpegiar: 1/4)
);
*/

(
Bajo.toca(inst: 'bajo',
	db: -17, nota: Pseq([57, 60, 64, 57, 60, 64, 53, 57, 60, 53, 57, 60,
		55, 59, 62, 55, 59, 62, 53, 57, 60,  55-12, 55, 62-12, 62], inf) + Pxrand ([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], inf),
rel: Pseq ([Pseq([1, 0.5, 0.5], 7), Pseq(#[0.5, 0.5, 0.5, 0.5], 1) ], inf),
dur: Pseq ([Pseq([1, 0.5, 0.5], 7), Pseq(#[0.5, 0.5, 0.5, 0.5], 1) ], inf),
);
)
)

(
Pbindef (\hi,
	\instrument,  \hi,
	\freq, Pseq([1], inf),
	\dur, Pseq ([0.5], inf),
	\rel, Pseq ([0.1, 0.50], inf),
	\pan, Pseq([-0.8], inf),
	\fil, Pseq ([10000, 5000], inf),
	\db, -12,
	\pan, 0.8,
).play(quant:4);
);

////////////tres
(

(
Mel.toca (pan: Prand([-0.8, 0, 0.8], inf), nota: Pseq ([55, 55, 57, 57]+24, 3),
	db: -28, inst:Pseq (['melGliss'], inf), dur: Prand ([0.5], inf), rel: Prand ([1], inf), arpegiar: 0)
);
Mel2.detener;
Pbindef (\hi).stop;
(
Bajo.toca(inst: 'bajo2',
	db: Pseq ([-20, -200, -20], inf),
	nota: Pseq([57, \r, 64,   57, \r,  64	], inf),
	rel: Pseq ([0.75, 0.25,1], inf),
		dur:Pseq([0.75,0.25,1], inf)
)
);

(
Pbindef (\jarana,
	\instrument,  \pad3,
	\midinote, Pseq([\r, [57, 60, 64], \r, [57, 60, 64], \r, [57, 60, 64], \r, [57, 60, 64]], inf),
	\dur, 0.5,
	\pan, Pseq([-0.8], inf),
	\rel, 0.05,
		\db, -22,
).play(quant:4)
);

(
Ritmo.toca ( guiraFreq: Pseq([Pseq(#[1,r, 1, 1],3), Pseq (#[1, r, 1, 1], 1)], inf) ,
	guiraDura: Pseq([Pseq([1/64,1/32,1/16,1/16]*(80/60) ,3), Pseq([1/64,1/32,1/16,1/16]*(80/60) ,1)], inf),
	guiraDur: Pseq ([Pseq ([0.5, 0.5, 0.5, 0.5]/2, 3), Pseq ([0.5, 0.5, 0.5,  0.5]/2, 1)], inf),  guiraPan: 0.8, guiraDb: Pseq ([Pseq ([-20, -20, -25, -25], 3), Pseq ([-20, -20, -25, -25], inf)], inf)*1,  campanaDb: Pseq([ Pseq ([-100, -100, -100, -100, -20, -20], 1), Pseq ([-100, -100, -100, -100, -20, -100], 1)], inf)-0, campanaDur: Pseq ([1, 1,1, 0.5, 0.25, 0.25], inf));
);
)
(
Pbindef (\hi,
	\instrument,  \hi,
	\freq, Pseq([1], inf),
	\dur, Pseq ([0.5], inf),
	\rel, Pseq ([0.1, 0.50], inf),
	\pan, Pseq([-0.8], inf),
	\fil, Pseq ([10000, 5000], inf),
	\db, -10,
	\pan, 0.8,
).play(quant:4);
)
////////////cuatro
(
(
Pbindef (\hi,
	\instrument,  \hi,
	\freq, Pseq([1], inf),
	\dur, Pseq ([0.5], inf),
	\rel, Pseq ([0.1, 0.50], inf),
	\pan, Pseq([-0.8], inf),
	\fil, Pseq ([10000, 5000], inf),
	\db, -10,
	\pan, 0.8,
).play(quant:4)
);

/*(
Mel2.toca (pan: Prand([-0.8, 0, 0.8], inf), nota:
	Prand([ Pstutter (1, Pseq ([57, 57, 60, 60,  57, 57, 57, 60, 60,  52,  53, 60, 60, 57, 60,  57,  60, 60, 60, 59 ], 2)),
	Pseq ([52, 52, 57, 60,   52, 52, 57, 60,  52, 52, 57, 60, 57, 55,  52, 52, 57, 60,   52, 52, 57, 60,    52, 52, 57, 60,     56]+12, 2)], inf),
	db: -25, inst: 'pluck',
	dur: Pseq([ Pseq ([0.25, 0.25, 0.25, 0.25,  1, 0.25, 0.25, 0.25, 0.25, 1 ,  0.5, 0.25, 0.25, 0.5, 0.25, 0.25,   0.25, 0.25, 0.5, 1], 2),  Pseq ([0.25, 0.25, 0.25,  0.25,  0.25,  0.25,  0.25, 0.25,  0.25, 0.25, 0.25, 0.25,   0.25,  0.75,
	0.25, 0.25, 0.25,  0.25,  0.25,   0.25,   0.25, 0.25,  0.25, 0.25, 0.25, 0.25, 1], 2)], inf)
, rel: 0.75)
);*/

(
Mel.toca (pan: Prand([0], inf), nota: Pseq([ Pseq ([57, 57, 6, 60,  57,     57, 57, 60, 60,  52,
	                                                   53, 60, 60, 57, 60,      57,  60, 60, 60, 59 ], 2),
                                                  Pseq (#[r, r, r, r,  r, r, r, r,   r, r, r, r,    r, r,
	                                             r, r,r, r,   r, r,r, r,   r, r, r, r,     r]+12, 2)], inf),
	db: Pseq([ Pseq ([-25, -25, -25, -25,  -25,    -25, -25, -25, -25, -25,
	                                                   -25, -25,-25, -25,-25,      -25, -25, -25, -25, -25 ], 2),
Pseq ([-250, -250, -250, -250,  -250, -250, -250, -250,   -250, -250, -250, -250,    -250, -250,
	                                             -250, -250,-250, -250,   -250, -250,-250, -250,   -250, -250, -250, -250, -250]+12, 2)], inf),
 inst: 'mel4', dur: Pseq([ Pseq ([0.25, 0.25, 0.25, 0.25,  1, 0.25, 0.25, 0.25, 0.25, 1 ,    0.5, 0.25, 0.25, 0.5, 0.25, 0.25,   0.25, 0.25, 0.5, 1], 2),
                                             Pseq ([0.25, 0.25, 0.25,  0.25,         0.25,   0.25,   0.25, 0.25,       0.25, 0.25, 0.25, 0.25,         0.25,   0.75,
 0.25, 0.25, 0.25,  0.25,         0.25,   0.25,   0.25, 0.25,       0.25, 0.25, 0.25, 0.25,         1], 2)], inf)
	, rel: 0.5)
);

//Mel2.detener;
(
Bajo.toca(inst: 'bajo2',
	db: Pseq ([-22, -200, -22], inf),
	nota:Pseq([Pseq([57, \r, 64,   57, \r,  64,  53, \r, 60,   53, \r, 60], 3),  Pseq([57, \r, 64,    57, \r,  64,     53, \r, 60,   53,  \r, 56], 1)], inf),
	rel: Pseq ([0.75, 0.25,1], inf),
		dur:Pseq([0.75,0.25,1], inf)
)
);

(
Pbindef (\jarana,
	\instrument,  \pad3,
	\midinote, Pseq([\r, [57, 64], \r, [57,  64], \r, [57,  64], \r, [57,  64],
		\r, [53,  60], \r, [53,60], \r, [53,  60], \r, [53,  60]], inf),

	\dur, 0.5,
	\pan, Pseq([-0.8], inf),
	\rel, 0.05,
		\db, -25,
).play(quant:4)
);

(
Ritmo.toca ( guiraFreq: Pseq([Pseq(#[1,r, 1, 1],3), Pseq (#[1, r, 1, 1], 1)], inf) ,
	guiraDura: Pseq([Pseq([1/64,1/32,1/16,1/16]*(80/60) ,3), Pseq([1/64,1/32,1/16,1/16]*(80/60) ,1)], inf),
	guiraDur: Pseq ([Pseq ([0.5, 0.5, 0.5, 0.5]/2, 3), Pseq ([0.5, 0.5, 0.5,  0.5]/2, 1)], inf),  guiraPan: 0.8, guiraDb: Pseq ([Pseq ([-20, -20, -25, -25], 3), Pseq ([-20, -20, -25, -25], inf)], inf),  campanaDb: Pseq ([-20], inf), campanaDur:Pseq ([1], inf))
);
)

/////////cinco (Transición)
(
~vol = 20;


Pbindef (\hi,
	\instrument,  \hi,
	\freq, Pseq([1], inf),
	\dur, Pseq ([0.5], inf),
	\rel, Pseq ([0.1, 0.50], inf),
	\pan, Pseq([-0.8], inf),
	\fil, Pseq ([10000, 5000], inf),
	\db, -12*~vol,
	\pan, 0.8,
).play(quant:4);

Pbindef (\tar,
	\instrument, \tarola2,
//\buf, Prand ([RGGTRN.timbal], inf),
	\dur, Pseq ([1, 0.5, 0.5, 1, 1]/2, inf),
		\freq, Pseq ([\r, \r, 100, \r, 100, \r, \r, 100, \r, 100], inf)+ Prand((0.1 .. 0.5), inf),
	\db, Pseq ([-100,-100, -10, -100, -12]*~vol, inf),
).play(quant:4);


Mel.toca (pan: Prand([-0.8, 0, 0.8], inf), nota: Pseq([ Pseq ([57, 57, 6, 60,  57,  57, 57, 60, 60,  52, 53, 60, 60, 57, 60,  57,  60, 60, 60, 59 ], 2), Pseq (#[r, r, r, r,  r, r, r, r,   r, r, r, r,  r, r, r, r,r, r,   r, r,r, r, r, r, r, r, r]+12, 2)], inf),
	db: Pseq([ Pseq ([-25, -25, -25, -25,  -25, -25, -25, -25, -25, -25,-25, -25,-25, -25,-25,  -25, -25, -25, -25, -25 ], 2),
		Pseq ([-250, -250, -250, -250,  -250, -250, -250, -250, -250, -250, -250, -250, -250, -250, -250, -250,-250, -250, -250, -250,-250, -250, -250, -250, -250, -250, -250]+12, 2)], inf)*~vol,
	inst: 'mel4', dur: Pseq([ Pseq ([0.25, 0.25, 0.25, 0.25,  1, 0.25, 0.25, 0.25, 0.25, 1, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25,   0.25, 0.25, 0.5, 1], 2), Pseq ([0.25, 0.25, 0.25,  0.25,   0.25,   0.25,   0.25, 0.25,  0.25, 0.25, 0.25, 0.25,  0.25,   0.75,
		0.25, 0.25, 0.25,  0.25,  0.25,   0.25,   0.25, 0.25,   0.25, 0.25, 0.25, 0.25, 1], 2)], inf), rel: 0.5);


Bajo.toca(inst: 'bajo2',
	db: Pseq ([-22, -200, -23], inf)*~vol,
	nota:Pseq([Pseq([57, \r, 64, 57, \r,  64, 53, \r, 60,   53, \r, 60], 3),  Pseq([57, \r, 64, 57, \r,  64, 53, \r, 60,53,  \r, 56], 1)], inf),
	rel: Pseq ([0.75, 0.25,1], inf),
	dur:Pseq([0.75,0.25,1], inf)
);


Pbindef (\jarana,
	\instrument,  \pad3,
	\midinote, Pseq([\r, [57, 64], \r, [57,  64], \r, [57,  64], \r, [57,  64], \r, [53,  60], \r, [53,60], \r, [53,  60], \r, [53,  60]], inf),

	\dur, 0.5,
	\pan, Pseq([-0.8], inf),
	\rel, 0.05,
	\db, -30*~vol,
).play(quant:4);

Ritmo.detener;
)








////////////////////////////////////////////////////////
Pbindef (\teclado).stop;


y = Pseq ([Pstutter (1, Pseq ([57, 60], 2) + Pseq ([0, 12], 2)), Pstutter (1, Pseq ([55, 60], 2)+ Pseq ([0, 12], 2))], inf)
x = Pseq ([Pstutter (1, Pseq ([57, 60], 2) + Pseq ([0, 12], 2))], inf)
//+ Pseq ([0, 12], 2)), Pstutter (1, Pseq ([55, 60], 2)+ Pseq ([0, 12], 2))], inf),

Mel2.detener

(
	SynthDef(\sharp, {|freq 440, amp 0.1, gate 1 atk 0.001, rel 0.005, pan = 0, fnoise=0.003|
			var env, audio, freq2;
			freq2 = Lag.ar(K2A.ar(freq), lagTime:0.5);
			env = EnvGen.ar(Env.adsr(0.001, 0.005, -1.dbamp, 0.3), doneAction:2, gate:gate);
			audio = Pulse.ar(freq:freq*Rand(1-fnoise,1+fnoise), mul:amp.clip(0,0.5));
			audio = audio * env;
			Out.ar(0, Pan2.ar (audio, pan));
		}).add;
)


/*(
Pbindef (\efecto,
	\instrument,  \sharp2,
	\midinote, Pseq([\r, [57, 60, 64], \r, [57, 60, 64], \r, [57, 60, 64], \r, [57, 60, 64], \r, [53, 57, 60], \r, [53, 57, 60], \r,  [53, 57, 60], \r,  [53, 57, 60], \r, [55, 59, 62], \r, [55, 59, 62], \r,  [55, 59, 62], \r,  [55, 59, 62], \r, [53, 57, 60], \r, [53, 57, 60],  \r, [55, 59, 62], \r, [55, 59, 62]], inf) + Pxrand([24], inf),
	\dur, Pseq ([0.25, 0.5],4),
	\pan, Pseq([-0.8, 0, 0.8], inf),
 	\strum, Pseq ([0.5, 0.75, 0.25], inf),
	\gliss, Prand ((150 .. 145).midicps, inf),
	\rel, 2,
	\db, -13,
).play(quant:4);
)*/

/*Bajo.toca(nota: Pseq([60, 64, 67, 60, 64, 67, 60, 64, 67, 60, 64, 67,
	55, 59, 62, 55, 59, 62,
	57,	60, 64, 57, 60, 64,
	52, 56,	59, 52, 56, 59,
	57, 60, 64,	57, 60, 64]-12, inf));

*/
/*
Bajo.toca(db: 0, nota: Pseq([57,60, 64,   60, 64, 67,  55, 59, 62,   55, 59, 62,
	57, 60, 64]-12, inf));
*/

/*Bajo.toca(db: -25, nota: Pseq([62, 65, 57,
	55, 58, 62, 55, 58, 62,
	62, 69, 57, 62, 69, 57,
	57, 61, 64, 67, 61, 64,
	62, 65, 57,
]-12, inf));

Mel.toca (nota: Pseq ([Pseq ([62, 62, 62,  64, 64, 64,  62, 62, 62,  64, 64, 64, 62, 62, 62,  64, 64, 64,    62, 69, 57, 62, 69, 57,]+12, 3), Pseq ([62, 62, 62, 67, 67, 67, 62, 62, 62, 67, 67, 67, 62, 62, 62, 67, 67, 67, 62, 62, 62, 67, 67, 67]+12, 1)],inf), rel:  0.35,
	db: -15, inst: 'pluckTri', dur: Pseq ([Pseq ([1/6, Rest(1/6)], 3), Pseq ([1/6, Rest(1/6)], 1)], inf));*/