
ymax = 1*10^5;
LineWidth=1.2;
Le1_temp=importdata('L:\TXT\P_PUNum\L1_Henc_Fourpeople_1_4M.bin_P_PUNum.txt');
Le2_temp=importdata('L:\TXT\P_PUNum\L2_Henc_Fourpeople_1_4M.bin_P_PUNum.txt');
Le3_temp=importdata('L:\TXT\P_PUNum\L3_Henc_Fourpeople_1_4M.bin_P_PUNum.txt');
Le4_temp=importdata('L:\TXT\P_PUNum\L4_Henc_Fourpeople_1_4M.bin_P_PUNum.txt');
Ori_data_temp=importdata('L:\TXT\P_PUNum\Ori_1_FourPeople_720_4M.bin_P_PUNum.txt');
% Enc_Henc_data_temp=importdata('L:\TXT\P_PUNum\Enc_Henc_4_decducks_take_off_420_720p50_.bin_P_PUNum.txt');
% [m,n]=size(Double_data); %m=25(I_frame)   n=35(intra_pre_modes)
Ori_data = sum(Ori_data_temp);
Le1_data = sum(Le1_temp);
Le2_data = sum(Le2_temp);
Le3_data = sum(Le3_temp);
Le4_data = sum(Le4_temp);


 plot(Le1_data,'g:*','LineWidth',LineWidth);
 hold on;
 set(gca,'FontSize',15);
 xlim([0, 25]);%只设定x轴的绘制范围
 ylim([0, ymax]);%只设定y轴的绘制范围
 set(gca,'XTick',0:5:25) %改变x轴坐标间隔显示 这里间隔为2
 set(gca,'YTick',0:ymax/5:ymax) %改变y轴坐标间隔显示 这里间隔为2
 
 plot(Le2_data,'b:*','LineWidth',LineWidth);
hold on;
 plot(Le3_data,'y:*','LineWidth',LineWidth);
 hold on;
 plot(Le4_data,'r:*','LineWidth',LineWidth);
hold on;
 plot(Ori_data,'m:*','LineWidth',LineWidth);
 legend('Level1','Level2','Level3','Level4','Ori');

suptitle('Fourpeople-1-4M');
   saveas(gcf,'Fourpeople_1_4M','tif');
   saveas(gcf,'Fourpeople_1_4M','fig');