function [H]=plot_vf(freq, vr, vfirst, vlast, mstyle, color, mkr, lir, sir)
%   ��Ƶɢ����
%   vr -- ���ٶȻ�Ⱥ�ٶ�Ƶɢ����(ÿ�ж�Ӧһ��ģʽ)
%   freq -- Ƶ�ʷ�Χ
%   style  color -- ָ�����ߵķ�����ɫ

mn = size(vr,2); % ÿ�д��һ��ģʽ
for i = 1:mn
    ind = find(vr(:,i) > 0);
    H=plot(freq(ind), vr(ind,i),'Marker',mkr, 'LineStyle', mstyle, 'Color', color,'linewidth',lir,'MarkerSize',sir);
    hold on;
end
ylim([vfirst-0.1,vlast]); % �ٶ���ʾ��Χ
xlabel('Frequency(Hz)');
ylabel('Phase Velocity(m/s)');
%hold off;
end

