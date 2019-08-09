clear

train=xlsread('PaperData2.xlsx');
[trainrow,traincolumn]=size(train);
%对标签进行处理
%for i=1:trainrow
%   if isempty(train(i,1))==0
%        train(i,1)=1;
%    else
%        train(i,1)=0;
%    end
%end

%提取测试数据
idx=randperm(trainrow,200);
test=train(idx,:);
train(idx,:)=[];
[testrow,testcolumn]=size(test);
[trainrow2,traincolumn2]=size(train);

C1=[];
C2=[];
for i=1:trainrow2
    if train(i,1)==1
        C1=[C1;train(i,:)];
    else
        train(i,1)=0;
        C2=[C2;train(i,:)];
    end
end

%计算中心
C1center=mean(C1);
C1center=C1center(1,2:end);    %1
C2center=mean(C2);
C2center=C2center(1,2:end);    %0
%test
output=[];
correct=0;
for i=1:200
    costC1=test(i,2:end)*C1center'/(sqrt(sum(test(i,2:end).^2))*sqrt(sum(C1center.^2)));
    costC2=test(i,2:end)*C2center'/(sqrt(sum(test(i,2:end).^2))*sqrt(sum(C2center.^2)));
    if costC1>costC2
        output=[output;1];
    else
        output=[output;0];
    end
    if output(i)==test(i,1)
        correct=correct+1;
    end
end

rate=correct/200;
disp(['CorrectRate= ',num2str(rate)]);

