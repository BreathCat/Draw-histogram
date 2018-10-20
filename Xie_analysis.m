ymax = 1.2*10^5;

LineWidth=1.2; 
Henc_data_temp=importdata('C:\Users\45452\OneDrive - bjtu.edu.cn\HEVC\txt_file\Henc_vidyo_1_4M.bin_P_PUNum.txt');
Ori_data_temp=importdata('C:\Users\45452\OneDrive - bjtu.edu.cn\HEVC\txt_file\Ori_vidyo_1_4M.bin_P_PUNum.txt');


Ori_data = sum(Ori_data_temp);
Henc_data = sum(Henc_data_temp);
Ori_Henc_data = Ori_data-Henc_data;

% Ori and Henc respectively
% subplot(2,1,1);
 plot(Ori_data,'r:*','LineWidth',LineWidth);
 hold on;
 plot(Henc_data,'y:*','LineWidth',LineWidth);
 legend('Ori','Henc');
 set(gca,'FontSize',15);
 xlim([0, 25]);%只设定x轴的绘制范围
 ylim([0, ymax]);%只设定y轴的绘制范围
 set(gca,'XTick',0:5:25) %改变x轴坐标间隔显示 这里间隔为2
 set(gca,'YTick',0:ymax/5:ymax) %改变y轴坐标间隔显示 这里间隔为2



 suptitle('vidyo-720P-4M');
   saveas(gcf,'Henc_Ori_vidyo_1_4M_P_PUNum','tif');
%    saveas(gcf,'Henc_Ori_vidyo_1_4M_P_PUNum','fig');

% Ori minusa Henc respectively
% subplot(2,1,2);
%  plot(Ori_Henc_data,'r:*','LineWidth',LineWidth);
%  legend('Ori minus Henc');
%  set(gca,'FontSize',15);
%  xlim([0, 25]);%只设定x轴的绘制范围
%  ylim([-ymax, ymax]);%只设定y轴的绘制范围
%  
%  set(gca,'XTick',0:5:25) %改变x轴坐标间隔显示 这里间隔为2
%  set(gca,'YTick',0:ymax/5:ymax) %改变y轴坐标间隔显示 这里间隔为2