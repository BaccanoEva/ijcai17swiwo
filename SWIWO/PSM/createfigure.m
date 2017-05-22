function createfigure(ymatrix1)
%CREATEFIGURE(YMATRIX1)
%  YMATRIX1:  bar ��������

%  �� MATLAB �� 19-Feb-2017 23:01:56 �Զ�����

% ���� figure
figure;

% ���� axes
axes1 = axes;
hold(axes1,'on');

% ʹ�� bar �ľ������봴������
bar1 = bar(ymatrix1);
set(bar1(2),'DisplayName','DIV@10',...
    'FaceColor',[0 0.447058826684952 0.74117648601532]);
set(bar1(1),'DisplayName','F1@10','FaceColor',[1 0.843137264251709 0]);

% ���� title
title('\it{LAST}');

box(axes1,'on');
% ������������������
set(axes1,'FontSize',16,'XGrid','on','XTick',[1 2 3 4 5 6],'XTickLabel',...
    {'\it{POP}','\it{FPME}','\it{PRME}','\it{GRU4Rec}','\it{SWIWO-I}','\it{SWIWO}'},...
    'YGrid','on');
% ���� legend
legend1 = legend(axes1,'show');
set(legend1,'Location','northwest');

