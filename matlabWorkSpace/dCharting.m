function [] = dCharting(sheet1,data1,data2,data3,sheet2,data4)
%���������ص���ͼ��
%�����ݱ��ж�ȡ���ݲ�������άͼ��
z1 = xlsread('dataTable.xlsx',sheet1,data1);
x = xlsread('dataTable.xlsx',sheet1,data2);
y = xlsread('dataTable.xlsx',sheet1,data3);

z2 = xlsread('dataTable.xlsx',sheet2,data4);

%ȷ���������꣨x��y����Ĳ�����ȡ0.1��
[X,Y] = meshgrid(min(x):0.1:max(x),min(y):0.1:max(y)); 
%�������λ�ò�ֵ��Z��ע�⣺��ͬ�Ĳ�ֵ�����õ������߹⻬�Ȳ�ͬ
Z1 = griddata(x,y,z1,X,Y,'v4');
Z2 = griddata(x,y,z2,X,Y,'v4');

%��������
figure(1)
surf(X,Y,Z1);
shading flat;
colormap hsv;
freezeColors;
hold on
%�ڶ�������
surf(X,Y,Z2);
shading interp;
colormap pink;
hold off
end

