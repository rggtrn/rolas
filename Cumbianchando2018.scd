//Cumbianchando!!!
RGGTRN.turboCargar;

t = TempoClock.tempo = 100/60;

//////////////uno

Teclado.toca(inst:'mel3', rel:0.25, db: -20, pan: 0.8, nota: Pseq (#[r, [62, 65, 69]], inf), dur: 0.5);
Ritmo.toca (bomboDb: -24, guiraDb: -20);
Bajo.toca(inst:'bajo2', db:-35, nota: Pseq([62,65,69], inf));

///////////////////dos

////dos////////////////
(
Ritmo.toca (bomboDb: -22, guiraDb: -20);
Bajo.toca(inst:'bajo2', db:-20, nota:Pseq([62,65,69], inf));

	//Pseq([Pseq([62,65,69, 62, 62, 62, \r], 1), Pseq([62,65,69], 8),
	//Pseq([  62,65,69,  60, 64, 67,], 4), Pseq([62], 1)], inf));

Teclado.toca(inst:'mel3', rel:0.25, db: -20, pan: 0.8, dur: 0.5, nota: Pseq([Pseq (#[r, [62, 65, 69], r, [62, 65, 69], [62, 62, 62], [62, 62, 62] , [62, 62, 62], r],1), Pseq(#[r, 62, 65, 69],16),
	//coro
	Pseq (#[r, [62, 65, 69],r, [62, 65, 69],  r, [60, 64, 67], r, [60, 64, 67]], 4), Pseq([\r], inf)], inf));
Mel.toca (atk: 0.105, rel: 0.4, inst:'pad4', db: -20,  nota: Pseq([62, 62, 65, 69,69, 69, 69, 69, 69, 69, 69, 72, 69, 72, 69, 72, 69, 69, 69, 67, 65, \r, 62, 65, 69, 69, 69, 69, 69, 69, 69, 69, 72, 69, 72, 69, 72, 69, 69, 69, 67, 65, \r,
	//coro
	\r,  62, 65, 69, 65, 69,
	60, 60, 64, 67, 64, 67,
	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 65, 64,
	62, 62, 65, 69, 65, 69,

	60, 60, 64, 67, 65, 64,
	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 65, 64,

	62, 62, 62, 60, 62, \r],inf),

dur: Pseq([3.5, 0.25!2, 0.25!8, 0.5!4, 0.5!6, 0.5,
	0.25!2,  0.25!8, 0.5!4, 0.5!6, 1,
	0.75, 0.25, 0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.5, 0.5, 0.75, 0.25, 1, 3
].flat, inf));
);

////////cuatro///////////////////
(
Ritmo.toca (bomboDb: -22, guiraDb: -25);
Mel.toca (inst:'mel2', db: -10, atk: 0.125, rel: 0.25, nota: \r);
Bajo.toca (inst: 'bajo2', db:-20, nota: Pseq([62,65,69, 60, 64, 67, 62,65,69, 60, 64, 67], inf));
)

/////////////final//////////////////
(
Ritmo.toca (bomboDb: -22, guiraDb: -20);
Bajo.toca(inst:'bajo2', db: -20, nota: Pseq( [62,65,69, 60, 64, 67, 62,65,69, 60, 64, 67], inf));
Mel.toca (inst:'pad4', db: -20, atk: 0.125, rel: 0.25, nota: Pseq([\r,  62, 65, 69, 65, 69,
	60, 60, 64, 67, 64, 67,
	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 65, 64,

	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 64, 67,
	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 65, 64,


	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 64, 67,
	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 65, 64,


	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 64, 67,
	62, 62, 65, 69, 65, 69,


	62, 62, 62, 60, 62, \r],inf),
dur: Pseq([
	0.75, 0.25, 0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.5, 0.5, 0.75, 2
].flat, inf),
//cuando salgo a cumbachar con mis amigas yo me pongo bien contento
);


Mel2.toca (inst:'mel4', db: -20, atk: 0.125, rel: 0.25, nota:  Pseq([\r,  \r, \r, \r, \r, \r,
	\r,  \r, \r, \r, \r, \r,
	\r,  \r, \r, \r, \r, \r,
	\r,  \r, \r, \r, \r, \r,

	\r,  \r, \r, \r, \r, \r,
	\r,  \r, \r, \r, \r, \r,
	\r,  \r, \r, \r, \r, \r,
	\r,  \r, \r, \r, \r, \r,


	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 64, 67,
	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 65, 64,


	62, 62, 65, 69, 65, 69,
	60, 60, 64, 67, 64, 67,
	62, 62, 65, 69, 65, 69,


	62, 62, 62, 60, 62, \r]+12,inf),
dur: Pseq([
	0.75, 0.25, 0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,
	0.75, 0.25,  0.25!4,

	0.5, 0.5, 0.75, 2
].flat, inf),
//cuando salgo a cumbachar con mis amigas yo me pongo bien contento
);
)


//f, m, p, q
/*
(Pdef(\sa, Pbind(
\instrument,  \samples,
\amp, 1* v,
\buf,  h = a;
switch (h,
4, Prand ([[ RGGTRN.sabro, ]], inf), // m, q
5, Prand ([[ RGGTRN.bote, ]], inf), // m, q
6, Prand ([[ RGGTRN.sabro ]], inf), // m, q
),
\freq, x=a;
switch(x,

4, Prand(#[0.005],inf),
5, Prand(#[0.05],inf),
6, Prand(#[0.05],inf),
),
\dur, y = a;
switch (y,
4,  Pseq ([2]/6, inf),
5, Pseq ([3]/6, inf),
6, Pseq ([3]/6, inf),
),
)));
*/
)

w=1;  /*vol*/ v=1; r=1;

f.play;
m.play;
q.play; //sa
c.play; //100
z.play; //fuerza
d.play;//internacional
u.play;

Pdef(\sa).play(quant:4);
Pdef(\bombo).play(quant:4);
Pdef(\guira).play(quant:4);

Pdef(\acompa).play(quant:1);
Pdef(\bajo).play(quant:4);
Pdef(\mel).play(quant:2);
Pdef(\mel2).play(quant:2);

(
Pdef(\sa).stop;
Pdef(\efecto).stop;
Pdef(\pad).stop;
Pdef(\bombo).stop;
Pdef(\tarola).stop;
Pdef(\timbal).stop;
Pdef(\conga).stop;
Pdef(\guira).stop;
Pdef(\mel).stop;
Pdef(\pluck).stop;
Pdef(\bajo).stop;
Pdef(\mel2).stop;
Pdef(\acompa).stop;

)

(
Pdef(\sa).fadeTime = 16;
Pdef(\guira).fadeTime = 16;
Pdef(\bajo).fadeTime = 16;
Pdef(\mel).fadeTime = 16;
Pdef(\acompa).fadeTime = 16;
Pdef(\bombo).fadeTime = 16;
Pdef(\pluck).fadeTime = 16;
Pdef(\conga).fadeTime = 16;
Pdef(\timbal).fadeTime = 16;
)
(
Pdef(\mel2).fadeTime = 0;
Pdef(\guira).fadeTime = 0;,,
Pdef(\bajo).fadeTime = 0;
Pdef(\mel).fadeTime = 0;
Pdef(\acompa).fadeTime = 0;
Pdef(\pluck).fadeTime = 0;
Pdef(\bombo).fadeTime = 0;
Pdef(\timbal).fadeTime = 0;
Pdef(\conga).fadeTime = 0;
)

s.prepareForRecord("/home/lui/Documentos/regalo18.aiff");
s.record;

s.stopRecording;

//jiribilla o groove




