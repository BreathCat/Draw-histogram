% ymax = 1*10^5;
ymax = 1;

LineWidth=1.2; 
Henc_data_temp=importdata('C:\Users\45452\OneDrive - bjtu.edu.cn\HEVC\txt_file\Henc_vidyo_1_4M.bin_P_PUNum.txt');
Ori_data_temp=importdata('C:\Users\45452\OneDrive - bjtu.edu.cn\HEVC\txt_file\Ori_vidyo_1_4M.bin_P_PUNum.txt');



Ori_data = sum(Ori_data_temp);
Henc_data = sum(Henc_data_temp);

Ori_data = Ori_data/sum(Ori_data);
 Henc_data = Henc_data/sum(Henc_data);
 
 Ori_data = Ori_data';
  Henc_data = Henc_data';
x = cat(2, Ori_data, Henc_data);
% Ori_Henc_data = (Ori_data-Henc_data)./Ori_data;  %Oir-Henc�����Ori������һ��

% % Ori and Henc respectively

 

%  plot(Ori_Henc_data,'r:*','LineWidth',LineWidth);
bar(x);
grid on;
 legend('Original');
 legend('Embed');
 set(gca,'FontSize',15);
 ylim([0, 0.5]);%ֻ�趨y��Ļ��Ʒ�Χ


 set(gca,'XTick',0:5:25) %�ı�x����������ʾ ������Ϊ2
 set(gca,'YTick',0:0.1:0.5) %�ı�y����������ʾ ������Ϊ2
 
 suptitle('vidyo-720P-1-4M');
 
   saveas(gcf,'vidio-720P-1-4M-Henc_minus_Ori','tif');
   saveas(gcf,'vidio-720P-1-4M-Henc_minus_Ori','fig');
