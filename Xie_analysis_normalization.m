% ymax = 1*10^5;
ymax = 1;

LineWidth=1.2; 
Henc_data_temp=importdata('C:\Users\45452\OneDrive - bjtu.edu.cn\HEVC\txt_file\Henc_johnny_1_12M.bin_P_PUNum.txt');
Ori_data_temp=importdata('C:\Users\45452\OneDrive - bjtu.edu.cn\HEVC\txt_file\Ori_johnny_1_12M.bin_P_PUNum.txt');



% Ori_data = sum(Ori_data_temp);
% Henc_data = sum(Henc_data_temp);
% 
% Ori_data = Ori_data/sum(Ori_data);
%  Henc_data = Henc_data/sum(Henc_data);
%  
%  Ori_data = Ori_data';
%   Henc_data = Henc_data';
% x = cat(2, Ori_data, Henc_data);
Ori_data = sum(Ori_data_temp);
Henc_data = sum(Henc_data_temp);

Ori_Henc_data = (Ori_data-Henc_data)./Ori_data;  %Oir-Henc后除以Ori，做归一化

% % Ori and Henc respectively

 

%  plot(Ori_Henc_data,'r:*','LineWidth',LineWidth);
% bar(x);
% grid on;
bar(Ori_Henc_data);
 set(gca,'FontSize',15);
 ylim([0, 1]);%只设定y轴的绘制范围


 set(gca,'XTick',0:2:25) %改变x轴坐标间隔显示 这里间隔为2
 set(gca,'YTick',0:0.2:1) %改变y轴坐标间隔显示 这里间隔为2
 
 suptitle('johnny-720P-12M');
 
   saveas(gcf,'johnny-720P-1-12M-Henc_minus_Ori','tif');
   saveas(gcf,'johnny-720P-1-12M-Henc_minus_Ori','fig');
