//Vamo a darle!!!
RGGTRN.turboCargar;
(
a=w;
(Pdef(\bombo, Pbind(
	\instrument,  \samples,
	\amp, 0.9 * v,
	\buf, RGGTRN.bombo,
	\freq,0,
	\dur, 1,
)));

(Pdef(\guira, Pbind(
	\instrument,  \guira,
\db, -20,
	\atk, 0.015,
	\dura, Pseq([1/64,1/32,1/16,1/16]*(80/60) ,inf),
	\rel, 0.05,
	\freq, x=1;
	switch( x,
		0, Pseq(#[ 1,r, 1, 1],inf)/r,
		1, Pseq(#[ 1, r, 1, 1],inf)/r,
		2, Pseq(#[ 1, 1, 1],inf)/r,
		3, Pseq(#[ 1, 1, 1],inf)/r,
		4, Pseq(#[ 1, 1, 1],inf)/r,
		5, Pseq(#[ 1, 1, 1],inf)/r,
		6, Pseq(#[ 1, r, 1, 1],inf)/r,
		7, Pseq(#[ 1, 1, 1]+3,inf)/r,
		8,Pseq(#[ 1, r, 1, 1],inf)/r,
		9, Pseq(#[ 1, 1, 1, 1]+2,inf)/r,
					),

	\dur, y= a;
	switch(y,
		0, 0.25/r, 1, 0.25/r, 2, 0.25/r, 3, 0.25/r, 4, 0.25/r, 5, 0.25/r, 6, 0.25/r, 7, 0.25/r, 8, (0.125)/r, 9, 0.125/r),
)));


(Pdef(\timbal, Pbind(
	\instrument,  \samples,
	\amp, z=a ;
	switch(z,
	0, 0, 1, 2, 2, 2,3, 2,	4, 2, 5, Pseq([0.5, 0.125, 0.125, 0.125], inf), 6, Pseq([2, 0.5, 0.5, 2, 0.5, 0.5, 2, 0.5, 0.5 , 2,0.5, 1], inf),
		7, Pseq([2, 0.5, 0.5, 2, 0.5, 0.5, 2, 0.5, 0.5 , 2,0.5, 1]+3, inf), 8, 1.5, 9, Prand([2, 1, 1, 2, 1, 1, 2, 1, 1 , 2, 1, 2]-0.4, inf),
	),
	\buf, RGGTRN.timbal,
	\pan, -1,
	\freq, x=a;

	switch(x,
		0,  0,
		1, Pseq(#[r,1,  r,   r, 1,   r]-1,inf),
		2, Pseq(#[r,1,  r,   r, 1,   r]-1,inf),
		3, Pseq(#[r,1,  r,   r, 1,   r]-1,inf),
		4, Pseq(#[r,1,  r,   r, 1,   r]-4,inf),
		5, Pseq(#[1,r, 1, 1]+3,inf),
		6, Prand(#[r,1, 1, 1, 1,1, 1, 3, 3],inf),
		7, Prand(#[r,1, 1, 1, 1, 1, 1, 3, 3],inf),
		8, Pseq(#[r,1,],inf),
		9, Pseq(#[1,r, 1, 1]+3,inf),
			),
	\dur,  y=a;

	switch(y,
	0, Pseq([1, 0.5,  0.5, 0.5, 0.5, 1],inf)/r,
		1, Pseq([0.5, 0.5,  1, 0.5, 0.5, 1],inf)/r,
		2, Pseq([0.5, 0.5,  1, 0.5, 0.5, 1],inf)/r,
		3, Pseq([0.5, 0.5,  1, 0.5, 0.5, 1],inf)/r,
		4, Pseq([0.5, 0.5,  1, 0.5, 0.5, 1],inf)/r,
		5, Pseq([0.25],inf)/r,
		6, Pxrand([0.25, 0.5, 0.75, 0.25, 0.25],inf)/r,
		7, 0.25/r,
		8, Pseq([0.5],inf)/r,
		9,  Pseq([0.25],inf)/r,

	),
)));

(Pdef(\mel, Pbind(\instrument,    \sharp,
	//\out, 36,
	\fase, 0.7,
	\num,2,
	\atk, 0.05,
	\rel, 0.25,
	\db, Pseq(#[-15, -200, -17,   -15, -200, -15,  -15,  -15, -200,   -15, -200, -200],inf),
	\pan, Pseq([1], inf),
	\midinote,  x=a;

	switch(x,


		2, Pseq(#[62, r, 62,   62, r, 65,  65,  62, r,   62, r, r]-12,inf),
		3,  Pseq([Pseq(#[62, r, 62,   62, r, 65,  65,  62, r,   62, r, r]-12,1),Pseq(#[62, r, 62,   62, 64, 65,  65,  62, 64,   62, r, 69]-12,1)],inf),
		4, Pseq(#[62, r, 62,   62, 64, 65,  65,  62, 64,   62, r, 69]-24, inf),
		5, Pseq([Pseq(#[62, r, 62,   62, r, 65,  65,  62, r,   62, r, r]-12,3),Pseq(#[62, r, 62,   62, 64, 65,  65,  62, 64,   62, r, 69]-12,1)],inf),
		6, Pseq(#[62, r, r, r, 62, r, r, r, 62, 62, r, r, 62, r, r, r]-24,inf),
		7, Pseq(#[62, r, r, r, 62, r, r, r, 62, 62, r, r, 62, r, r, r]-24,inf),
		8,Pseq(#[62, r, 62, r, 62, r, 62, r, 62, 62, r, r, 62, 63, 64, 65],inf),
		9,Pseq(#[62, r, 62, r, 62, r, 62, r, 62, 62, r, r, 62, 63, 64, 65],inf),
	 ),

	\dur,  y=a; switch( y,  0,(1/3)/r, 1, (1/3)/r, 2,(1/4)/r, 3, (1/4)/r, 4, (1/4)/r, 5, (1/4)/r, 6, (1/4)/r, 7, (1/4)/r, 8, (1/4)/r, 9, (1/4)/r, 10, (1/3)*2, 11, (1/3)*2),
)));

(Pdef(\pad, Pbind(\instrument,    \pad,
	\fase, 0.7,
	\num, 4,
	\atk, 0.05,
	\rel,  0.25,
	\amp, 0.75 * v,
	\pan, Pseq([-0.8,0, 0.8], inf),
	\midinote,  x=a;

	switch(x,

		5, Pseq((#[74, r, 74,   74, r, 77,  77, 74, r, 74, r , r]),inf),
		6, Pseq(#[62, r, r, r, 62, r, r, r, 62, 62, r, r, 62, r, r, r]-12,inf),
		7,  Pseq(#[62, r, r, r, 62, r, r, r, 62, 62, r, r, 62, r, r, r],inf),
		8,  Pseq(#[62, r, r, r, 62, r, r, r, 62, 62, r, r, 62, r, r, r],inf),
		9,  Pseq(#[62, r, r, r, 62, r, r, r, 62, 62, r, r, 62, r, r, r],inf),
		),

	\dur,   y=a; switch( y,  0,(1/3)/r, 1, (1/3)/r, 2,(1/3)/r, 3, (1/4)/r, 4, (1/4)/r, 5, (1/4)/r, 6, (1/4)/r, 7, (1/4)/r, 8, (1/4)/r, 9, (1/4)/r),

	\strum, Prand([0.0], inf),
)));

(Pdef(\bajo, Pbind(
	\instrument,  \bajo2,

	\db, -15,
	\atk, 0.025,
	\rel, Pseq(#[1, 0.5, 0.5], inf)/r,
	\midinote, Pseq((#[62, 65, 69]-12),inf),
		\dur, y=a;

	switch(y,


		1,Pseq(#[1, 0.5, 0.5], inf)/r,
		2, Pseq(#[1, 0.5, 0.5], inf)/r,
		3, Pseq(#[1, 0.5, 0.5], inf)/r,

		5,Pseq(#[1, 0.5, 0.5], inf)/r,
		6,Pseq(#[1, 0.5, 0.5], inf)/r,
		7,Pseq(#[1, 0.5, 0.5], inf)/r,
		8,Pseq(#[1, 0.5, 0.5], inf)/r,
		9, Pseq(#[1, 0.5, 0.5], inf)/r,

))));
)

w=3; /*vol*/ v=(1); r=1;

//conga?
o.play;
p.play;
f.play;
m.play;
q.play;

Pdef(\bombo).play(quant:4);
Pdef(\mel).play(quant:4);
Pdef(\pad).play(quant:4);
Pdef(\guira).play(quant:4);
Pdef(\bajo).play(quant:4);
//Pdef(\timbal).play(quant:4);

Pdef(\bombo).stop;
Pdef(\timbal).stop;
Pdef(\guira).stop;
Pdef(\mel).stop;
Pdef(\mel2).stop;
Pdef(\bajo).stop;
(
Pdef(\contras).fadeTime = 4;
Pdef(\conga).fadeTime = 4;
Pdef(\bajo).fadeTime = 4;
Pdef(\mel).fadeTime = 4;
Pdef(\acompa).fadeTime = 4;
Pdef(\bombo).fadeTime = 4;
Pdef(\timbal).fadeTime = 4;
)
(
Pdef(\guira).fadeTime = 0;
Pdef(\bajo).fadeTime = 0;
Pdef(\mel).fadeTime = 0;
Pdef(\pad).fadeTime = 0;
Pdef(\pluck).fadeTime = 0;
Pdef(\bombo).fadeTime = 0;
Pdef(\tarola).fadeTime = 0;
)

s.prepareForRecord("~/Dropbox/CumWerk.aiff".standardizePath);
s.record;

s.stopRecording;

