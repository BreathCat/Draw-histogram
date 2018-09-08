Ori_data_temp=importdata('L:\TXT\P_PUNum\Ori_1_ducks_take_off_420_720p50_.bin_P_PUNum.txt');
Henc_data_temp=importdata('L:\TXT\P_PUNum\Henc_1_ducks_take_off_420_720p50.bin_P_PUNum.txt');
Enc_Ori_data_temp=importdata('L:\TXT\P_PUNum\Enc_Ori_1_ducks_take_off_420_720p50.bin_P_PUNum.txt');
Enc_Henc_data_temp=importdata('L:\TXT\P_PUNum\Enc_Henc_1_ducks_take_off_420_720p50.bin_P_PUNum.txt');

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
 plot(Ori_data,'g','LineWidth',1.4);
 hold on;
 plot(Henc_data,'m:','LineWidth',1.4);
 legend('Ori','Henc');
 
 subplot(2,2,2);
 plot(Ori_data,'g','LineWidth',1.4);
 hold on;
 plot(Enc_Ori_data,'b:','LineWidth',1.4);
 legend('Ori','Enc-Ori');
 
 subplot(2,2,3);
 plot(Henc_data,'m:','LineWidth',1.4);
 hold on;
 plot(Enc_Henc_data,'r','LineWidth',1.4);
 legend('Henc','Enc-Henc');
 
 subplot(2,2,4);
 plot(Enc_Ori_data,'b:','LineWidth',1.4);
 hold on;
 plot(Enc_Henc_data,'r','LineWidth',1.4);
 legend('Enc-Ori','Enc-Henc');