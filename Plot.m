clear; close all; clc;

Record = 0;

fid = fopen(sprintf('Record_Acce_%i.AT2',Record),'r');
Acc = textscan(fid,'%f',Inf,'Delimiter',',');
fclose(fid);

fid = fopen(sprintf('Record_Time_%i.AT2',Record),'r');
Tim = textscan(fid,'%f',Inf,'Delimiter',',');
fclose(fid);

Acce = Acc{1};
Time = Tim{1};

plot(Time,Acce./9.81,'r-','LineWidth',2); 