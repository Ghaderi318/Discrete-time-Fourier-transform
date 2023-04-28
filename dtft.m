clc;clear all,close all;

function [ X ] = dtft( x, n, w ) 

 temp = w' * n; 
 temp = -1i * temp;  
 e = exp(temp); 
 X = e * x'; 
 end 