
% Fun��o de transferncia gerada pelo ident com uma a fitness de 94.69%
G = tf(0.6342, [1 0.7862], 'InputDelay', 0.399);

% aproxima��o de Pad� de 1� e 10
Gp1 = pade(G, 1);

% aproxima��o de Pad� de 1� e 10
Gp10 = pade(G, 10);

tempo = 10;

figure(5);
step(260*G,260*Gp1,260*Gp10,tempo);
legend('G(s) ident','Pad� 1� ordem', 'Pad� 10� ordem');
xlabel('Tempo (s)');title('Figura 5 - Aproxima��o de Pad�'); 
grid on;
