clc;clear all
C = [4 8 7 15 12;7 9 17 14 10;6 9 12 8 7;6 7 14 6 10;6 9 12 10 6]; %Ч�ʾ���C
n = size(C,1);%����C��������n  C�ĵ�һ��
C = C(:);%����Ŀ�꺯��ϵ����������C�����ų�һ������������
A = [];B = [];%û�в���ʽԼ��
Ae = zeros(2*n,n^2);%�����Լ����ϵ������a 
for i = 1:n
   for  j = (i - 1)*n+1:n*i
       Ae(i,j) = 1;
       
   end
   for k = i:n:n^2
        Ae(n+i,k) = 1;       
   end
end
Be = ones(2*n,1);%��ʽԼ���Ҷ���b
Xm = zeros(n^2,1);%���߱����½�Xm
XM = ones(n^2,1);%���߱����Ͻ�XM
[x,z] = linprog(C,A,B,Ae,Be,Xm,XM);%ʹ��linprog���;
x = reshape(x,n,n);%��������x�����ų�һ��n�׷���
disp('���Ž����Ϊ��'); %���ָ�ɷ���������ֵ
Assignment = round(x); %ʹ��round������������ȡ��
disp('���Ž�');
z