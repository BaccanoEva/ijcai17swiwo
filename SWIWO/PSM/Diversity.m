function [ diver ] = Diversity( data )
%DIVERSITY �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
diver = 0;
nSess = size(data, 1);

parfor i = 1:nSess-1
    currData = data(i, :);
    for j = i+1:nSess
        diver = diver + (1 - length(intersect(data(j, :), currData)) / length(union(data(j, :), currData)));
    end
end

diver = diver / (0.5*nSess*(nSess - 1));

end

