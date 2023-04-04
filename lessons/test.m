clear all; close all; clc

% funzione di trasferimento
s = tf('s');
G = (10*(1-s)*(s+2))/((s+1)*(s^2+s+4))

G_zpk = zpk(G);
G_zpk.DisplayFormat='frequency'

pole(G)
zero(G)

bode(G)
figure;

nyquist(G)