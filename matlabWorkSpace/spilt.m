function [ ] = spilt(str,title,sheet,range)
%�и��ַ�����ָ������ļ�

str = deblank(str);
%������ʽ
S = regexp(str, '\/', 'split'); 
%д���ļ�
result = [{title};S']; 
xlswrite('dataTable.xlsx',result,sheet,range);          

end

