function [] = charting(sheet,data2,data3,sheet2,data4)

%�����ݱ��ж�ȡ���ݲ�������άͼ��
z = xlsread('dataTable.xlsx',sheet2,data4);
x = xlsread('dataTable.xlsx',sheet,data2);
y = xlsread('dataTable.xlsx',sheet,data3);

%ȷ���������꣨x��y����Ĳ�����ȡ0.1��
[X,Y]=meshgrid(min(x):0.1:max(x),min(y):0.1:max(y)); 
%�������λ�ò�ֵ��Z
Z=griddata(x,y,z,X,Y,'v4');
%��������
figure(1)
surf(X,Y,Z);
shading interp;
colormap hsv;

end

