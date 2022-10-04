

s = tf('s');

num=4;
den=[1 2 0];
G=tf(num,den)
Gmf=feedback(G,1)

numc=4*[1 2];
denc=[1 4];
Gc=tf(numc,denc)

%Planta com compensação em malha fechada
Gmfc=feedback(Gc*G,1);
Gmfc=minreal(Gmfc)

step(Gmf);
hold;
step(Gmfc);
legend('Sem compensação','Com compensação');