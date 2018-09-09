
ymax = 2*10^5;
LineWidth=1.2;
Ori_data_temp=importdata('L:\TXT\P_PUNum\Ori_1_ducks_take_off_420_720p50_.bin_P_PUNum.txt');
Henc_data_temp=importdata('L:\TXT\P_PUNum\Henc_1_ducks_take_off_420_720p50.bin_P_PUNum.txt');
Enc_Ori_data_temp=importdata('L:\TXT\P_PUNum\Enc_Ori_1_ducks_take_off_420_720p50.bin_P_PUNum.txt');
 Enc_Henc_data_temp=importdata('L:\TXT\P_PUNum\Enc_Henc_1_ducks_take_off_420_720p50.bin_P_PUNum.txt');
% Enc_Henc_data_temp=importdata('L:\TXT\P_PUNum\Enc_Henc_4_decducks_take_off_420_720p50_.bin_P_PUNum.txt');
% [m,n]=size(Double_data); %m=25(I_frame)   n=35(intra_pre_modes)
Ori_data = sum(Ori_data_temp);
Henc_data = sum(Henc_data_temp);
Enc_Ori_data = sum(Enc_Ori_data_temp);
Enc_Henc_data = sum(Enc_Henc_data_temp);

% plot(Double_data(9,:),'r-*');
% hold on;
% plot(Single_data(9,:),'b-s');
% zz=Double_data-Single_data;
 subplot(2,2,1);
 plot(Ori_data,'g:*','LineWidth',LineWidth);
%  xlabel('PU Mode');% x轴名称
%  ylabel('summary');
 hold on;
 plot(Henc_data,'m:','LineWidth',LineWidth);
 legend('Ori','Henc');
 set(gca,'FontSize',15);
 xlim([0, 25]);%只设定x轴的绘制范围
 ylim([0, ymax]);%只设定y轴的绘制范围
 set(gca,'XTick',0:5:25) %改变x轴坐标间隔显示 这里间隔为2

 subplot(2,2,2);
 plot(Ori_data,'g:*','LineWidth',LineWidth);
 hold on;
 plot(Enc_Ori_data,'b','LineWidth',LineWidth);
 legend('Ori','Enc-Ori');
 set(gca,'FontSize',15);
 xlim([0, 25]);%只设定x轴的绘制范围
 ylim([0, ymax]);%只设定y轴的绘制范围
 set(gca,'XTick',0:5:25) %改变x轴坐标间隔显示 这里间隔为2

 subplot(2,2,3);
 plot(Henc_data,'m:*','LineWidth',LineWidth);
 hold on;
 plot(Enc_Henc_data,'r','LineWidth',LineWidth); 
 legend('Henc','Enc-Henc');
 set(gca,'FontSize',15);
 xlim([0, 25]);%只设定x轴的绘制范围
 ylim([0, ymax]);%只设定y轴的绘制范围
 set(gca,'XTick',0:5:25) %改变x轴坐标间隔显示 这里间隔为2

 subplot(2,2,4);
 plot(Enc_Ori_data,'b:*','LineWidth',LineWidth);
 hold on;
 plot(Enc_Henc_data,'r','LineWidth',LineWidth);
 legend('Enc-Ori','Enc-Henc');
 set(gca,'FontSize',15);
 xlim([0, 25]);%只设定x轴的绘制范围
 ylim([0, ymax]);%只设定y轴的绘制范围
 set(gca,'XTick',0:5:25) %改变x轴坐标间隔显示 这里间隔为2
 
 suptitle('Duck-1');
   saveas(gcf,'duck_1','tif');
   saveas(gcf,'duck_1','fig');