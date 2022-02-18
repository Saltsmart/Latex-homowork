function T1_1
clear;clc;close all; %清零命令行窗口和工作区，关闭图窗
format compact; %设置命令行窗口不显示空行
diary('T1_1.txt');diary on; %使用文本记录输出值
for N=[10^2 10^4 10^6]
    SN_se=single(0); %按照从大到小顺序的S_N，single函数用于产生单精度数值
    SN_ab=single(0); %按照从小到大顺序的S_N
    %累加计算S_N
    for j=2:N
        SN_se=single(SN_se+f(j)); %从大到小累加计算，注意用单精度
        SN_ab=single(SN_ab+f(N-j+2)); %从小到大累加计算
    end
    %注意到S_N<1，设置为显示10位小数，对应10位有效数字
    fprintf('当N=10^%d时\n从大到小计算的S_N为%.10f\n',log10(N),SN_se);
    fprintf('从小到大计算的S_N为%.10f\n',SN_ab);
    
    %求解有效位数
    SN_precise=1/2*(3/2-1/N-1/(N+1)); %S_N的精确值
    error_se=abs(SN_precise-SN_se);
    error_ab=abs(SN_precise-SN_ab);
    %注意到S_N<1，有效位数计算中的k=0，从10位有效数字的高精度逐渐过渡到低精度
    %i=10时，无有效位数
    for i=0:10
        if error_se<=1/2*10^-(10-i) %检查n是否为10-i
            fprintf('从大到小计算的S_N有效位数为%d\n',10-i);
            break
        end
        if i==10
            fprintf('从大到小计算的S_N无有效位数\n');
        end
    end
    for i=0:10
        if error_ab<=1/2*10^-(10-i)
            fprintf('从小到大计算的S_N有效位数为%d\n',10-i);
            break
        end
        if i==10
            fprintf('从小到大计算的S_N无有效位数\n');
        end
    end
end
diary off; %停止记录

%定义数列和的通项公式
function y=f(x)
y=1/(x^2-1);