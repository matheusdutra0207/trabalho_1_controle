
% Função de transferncia gerada pelo ident com uma a fitness de 94.69%
G = tf(0.6342, [1 0.7862], 'InputDelay', 0.399);

% aproximação de Padé de 1ª e 10
Gp1 = pade(G, 1);

% aproximação de Padé de 1ª e 10
Gp10 = pade(G, 10);

tempo = 10;

figure(5);
step(260*G,260*Gp1,260*Gp10,tempo);
legend('G(s) ident','Padé 1ª ordem', 'Padé 10ª ordem');
xlabel('Tempo (s)');title('Figura 5 - Aproximação de Padé'); 
grid on;
