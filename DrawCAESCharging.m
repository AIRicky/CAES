%% Charging visulization interface V1.0
%%% Air Pressure
figure
if strcmp(TV_Mode.Comp, 'SP')
    plot(1/60*tstep*time_period_char, CompOn.c1(time_period_char).*p_a_out.c1(time_period_char)*1e-3, 'r-'); % KPa -> MPa
    hold on
    plot(1/60*tstep*time_period_char, CompOn.c2(time_period_char).*p_a_out.c2(time_period_char)*1e-3, 'g-');
    plot(1/60*tstep*time_period_char, CompOn.c3(time_period_char).*p_a_out.c3(time_period_char)*1e-3, 'b-');
    plot(1/60*tstep*time_period_char, CompOn.c4(time_period_char).*p_a_out.c4(time_period_char)*1e-3, 'm-');
    plot(1/60*tstep*time_period_char, CompOn.c5(time_period_char).*p_a_out.c4(time_period_char)*1e-3, 'c-');
    plot(1/60*tstep*time_period_char, P_as.Char(time_period_char)*1e-3, 'k-.')
else
    plot(1/60*tstep*time_period_char, p_a_out.c1(time_period_char)*1e-3, 'r-'); % KPa -> MPa
    hold on
    plot(1/60*tstep*time_period_char, p_a_out.c2(time_period_char)*1e-3, 'g-');
    plot(1/60*tstep*time_period_char, p_a_out.c3(time_period_char)*1e-3, 'b-');
    plot(1/60*tstep*time_period_char, p_a_out.c4(time_period_char)*1e-3, 'm-');
    plot(1/60*tstep*time_period_char, p_a_out.c4(time_period_char)*1e-3, 'c-');
    plot(1/60*tstep*time_period_char, P_as.Char(time_period_char)*1e-3, 'k-.')
end

if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('ѹ�� (MPa)')
    legend('һ��ѹ��������', '����ѹ��������', '����ѹ��������', '�ļ�ѹ��������', '�弶ѹ��������', '����ѹ��')
    if strcmp(TV_Mode.Comp, 'CP')
       title('��ѹ����ģʽ�µ�����ѹ��')
    else       
       title('��ѹ����ģʽ�µ�����ѹ��')
    end
else % 'en' 
    % pass
end

%%% Power Consumption
figure
if strcmp(TV_Mode.Comp, 'SP')
    W_char.all = CompOn.c1.*W_char.c1 + CompOn.c2.*W_char.c2 + CompOn.c3.*W_char.c3 + CompOn.c4.*W_char.c4 + CompOn.c5.*W_char.c5;
    plot(1/60*tstep*time_period_char, CompOn.c1(time_period_char).*W_char.c1(time_period_char)*1e-3, 'r-'); % W -> kW
    hold on
    plot(1/60*tstep*time_period_char, CompOn.c2(time_period_char).*W_char.c2(time_period_char)*1e-3, 'g-');
    plot(1/60*tstep*time_period_char, CompOn.c3(time_period_char).*W_char.c3(time_period_char)*1e-3, 'b-');
    plot(1/60*tstep*time_period_char, CompOn.c4(time_period_char).*W_char.c4(time_period_char)*1e-3, 'm-');
    plot(1/60*tstep*time_period_char, CompOn.c5(time_period_char).*W_char.c5(time_period_char)*1e-3, 'c-');
    plot(1/60*tstep*time_period_char, W_char.all(time_period_char)*1e-3, 'k-.')
else
    W_char.all = W_char.c1 + W_char.c2 + W_char.c3 + W_char.c4 + W_char.c5;
    plot(1/60*tstep*time_period_char, W_char.c1(time_period_char)*1e-3, 'r-'); % W -> kW
    hold on
    plot(1/60*tstep*time_period_char, W_char.c2(time_period_char)*1e-3, 'g-');
    plot(1/60*tstep*time_period_char, W_char.c3(time_period_char)*1e-3, 'b-');
    plot(1/60*tstep*time_period_char, W_char.c4(time_period_char)*1e-3, 'm-');
    plot(1/60*tstep*time_period_char, W_char.c5(time_period_char)*1e-3, 'c-');
    plot(1/60*tstep*time_period_char, W_char.all(time_period_char)*1e-3, 'k-.')
end

if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('���� (kW)')
    legend('һ��ѹ����', '����ѹ����', '����ѹ����', '�ļ�ѹ����', '�弶ѹ����', '�ܺĹ�')
    if strcmp(TV_Mode.Comp, 'CP')
       title('��ѹ����ģʽ�µ�ѹ�����Ĺ�')
    else       
       title('��ѹ����ģʽ�µ�ѹ�����Ĺ�')
    end
else
    % pass
end

%%% Heat Exchanger heat exchanger amount
figure
if strcmp(TV_Mode.Comp, 'SP')
    plot(1/60*tstep*time_period_char, abs(CompOn.c1(time_period_char).*Phi.HXC1(time_period_char)*1e-3), 'r-'); % W -> kW
    hold on
    plot(1/60*tstep*time_period_char, abs(CompOn.c2(time_period_char).*Phi.HXC2(time_period_char)*1e-3), 'g-');
    plot(1/60*tstep*time_period_char, abs(CompOn.c3(time_period_char).*Phi.HXC3(time_period_char)*1e-3), 'b-');
    plot(1/60*tstep*time_period_char, abs(CompOn.c4(time_period_char).*Phi.HXC4(time_period_char)*1e-3), 'm-');
    plot(1/60*tstep*time_period_char, abs(CompOn.c5(time_period_char).*Phi.HXC5(time_period_char)*1e-3), 'c-');
else
    plot(1/60*tstep*time_period_char, abs(Phi.HXC1(time_period_char)*1e-3), 'r-'); % W -> kW
    hold on
    plot(1/60*tstep*time_period_char, abs(Phi.HXC2(time_period_char)*1e-3), 'g-');
    plot(1/60*tstep*time_period_char, abs(Phi.HXC3(time_period_char)*1e-3), 'b-');
    plot(1/60*tstep*time_period_char, abs(Phi.HXC4(time_period_char)*1e-3), 'm-');
    plot(1/60*tstep*time_period_char, abs(Phi.HXC5(time_period_char)*1e-3), 'c-');
end

if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('������ (kW)')
    legend('һ��������', '����������', '����������', '�ļ�������', '�弶������')
    if strcmp(TV_Mode.Comp, 'CP')
       title('��ѹ����ģʽ�µĻ�����')
    else       
       title('��ѹ����ģʽ�µĻ�����')
    end
else
    % pass
end

%%% Inlet and outlet temperature of HX
figure
subplot(3,2,1)
if strcmp(TV_Mode.Comp, 'SP')
    plot(1/60*tstep*time_period_char, CompOn.c1(time_period_char).*T_a_in.HXC1(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, CompOn.c1(time_period_char).*(T_HTF_in.HXC1_rated*ones(1,length(time_period_char))), 'b-');
    plot(1/60*tstep*time_period_char, CompOn.c1(time_period_char).*T_a_out.HXC1(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, CompOn.c1(time_period_char).*T_HTF_out.HXC1(time_period_char), 'b-.');
else
    plot(1/60*tstep*time_period_char, T_a_in.HXC1(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, T_HTF_in.HXC1_rated*ones(1,length(time_period_char)), 'b-');
    plot(1/60*tstep*time_period_char, T_a_out.HXC1(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, T_HTF_out.HXC1(time_period_char), 'b-.');
end
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Comp, 'CP')
   title('��ѹ����ģʽ�µ�һ���������¶�')
else       
   title('��ѹ����ģʽ�µ�һ���������¶�')
end

subplot(3,2,2)
if strcmp(TV_Mode.Comp, 'SP')
    plot(1/60*tstep*time_period_char, CompOn.c2(time_period_char).*T_a_in.HXC2(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, CompOn.c2(time_period_char).*(T_HTF_in.HXC2_rated*ones(1,length(time_period_char))), 'b-');
    plot(1/60*tstep*time_period_char, CompOn.c2(time_period_char).*T_a_out.HXC2(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, CompOn.c2(time_period_char).*T_HTF_out.HXC2(time_period_char), 'b-.');
else
    plot(1/60*tstep*time_period_char, T_a_in.HXC2(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, T_HTF_in.HXC2_rated*ones(1,length(time_period_char)), 'b-');
    plot(1/60*tstep*time_period_char, T_a_out.HXC2(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, T_HTF_out.HXC2(time_period_char), 'b-.');
end
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Comp, 'CP')
   title('��ѹ����ģʽ�µĶ����������¶�')
else       
   title('��ѹ����ģʽ�µĶ����������¶�')
end

subplot(3,2,3)
if strcmp(TV_Mode.Comp, 'SP')
    plot(1/60*tstep*time_period_char, CompOn.c3(time_period_char).*T_a_in.HXC3(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, CompOn.c3(time_period_char).*(T_HTF_in.HXC3_rated*ones(1,length(time_period_char))), 'b-');
    plot(1/60*tstep*time_period_char, CompOn.c3(time_period_char).*T_a_out.HXC3(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, CompOn.c3(time_period_char).*T_HTF_out.HXC3(time_period_char), 'b-.');
else
    plot(1/60*tstep*time_period_char, T_a_in.HXC3(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, T_HTF_in.HXC3_rated*ones(1,length(time_period_char)), 'b-');
    plot(1/60*tstep*time_period_char, T_a_out.HXC3(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, T_HTF_out.HXC3(time_period_char), 'b-.');
end
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Comp, 'CP')
   title('��ѹ����ģʽ�µ������������¶�')
else       
   title('��ѹ����ģʽ�µ������������¶�')
end

subplot(3,2,4)
if strcmp(TV_Mode.Comp, 'SP')
    plot(1/60*tstep*time_period_char, CompOn.c4(time_period_char).*T_a_in.HXC4(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, CompOn.c4(time_period_char).*(T_HTF_in.HXC4_rated*ones(1,length(time_period_char))), 'b-');
    plot(1/60*tstep*time_period_char, CompOn.c4(time_period_char).*T_a_out.HXC4(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, CompOn.c4(time_period_char).*T_HTF_out.HXC4(time_period_char), 'b-.');
else
    plot(1/60*tstep*time_period_char, T_a_in.HXC4(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, T_HTF_in.HXC4_rated*ones(1,length(time_period_char)), 'b-');
    plot(1/60*tstep*time_period_char, T_a_out.HXC4(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, T_HTF_out.HXC4(time_period_char), 'b-.');
end
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Comp, 'CP')
   title('��ѹ����ģʽ�µ��ļ��������¶�')
else      
   title('��ѹ����ģʽ�µ��ļ��������¶�')
end

subplot(3,2,5)
if strcmp(TV_Mode.Comp, 'SP')
    plot(1/60*tstep*time_period_char, CompOn.c5(time_period_char).*T_a_in.HXC5(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, CompOn.c5(time_period_char).*(T_HTF_in.HXC5_rated*ones(1,length(time_period_char))), 'b-');
    plot(1/60*tstep*time_period_char, CompOn.c5(time_period_char).*T_a_out.HXC5(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, CompOn.c5(time_period_char).*T_HTF_out.HXC5(time_period_char), 'b-.');
else
    plot(1/60*tstep*time_period_char, T_a_in.HXC5(time_period_char), 'r-'); % [K]
    hold on
    plot(1/60*tstep*time_period_char, T_HTF_in.HXC5_rated*ones(1,length(time_period_char)), 'b-');
    plot(1/60*tstep*time_period_char, T_a_out.HXC5(time_period_char), 'r-.');
    plot(1/60*tstep*time_period_char, T_HTF_out.HXC5(time_period_char), 'b-.');
end
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Comp, 'CP')
   title('��ѹ����ģʽ�µ��弶�������¶�')
else      
   title('��ѹ����ģʽ�µ��弶�������¶�')
end
% subplot(3,2,6) % 

%%% Mass/Pressure/Temperature of ASU
figure
subplot(2,1,1)
plot(1/60*tstep*time_period_char, M_as.Char(time_period_char), 'r-'); % kg
if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('�������� (kg)')
    if strcmp(TV_Mode.Comp, 'CP')
       title('��ѹ����ģʽ�µĴ������������')
    else       
       title('��ѹ����ģʽ�µĴ������������')
    end
else
    % pass
end

subplot(2,1,2)
hAx = plotyy(1/60*tstep*time_period_char,P_as.Char(time_period_char)*1e-3,1/60*tstep*time_period_char,T_as.Char(time_period_char));
xlabel('ʱ�� (min)')
ylabel(hAx(1), '������ѹ�� (MPa)')
ylabel(hAx(2), '�������¶� (K)')
if strcmp(TV_Mode.Comp, 'CP')
    title('��ѹ����ģʽ�µĴ����⶯̬����')
else
    title('��ѹ����ģʽ�µĴ����⶯̬����')
end

%%% Mass and Temperature of TES
figure
hAx = plotyy(1/60*tstep*time_period_char, T_TES.Char(time_period_char), 1/60*tstep*time_period_char, M_TES.Char(time_period_char));
xlabel('ʱ�� (min)')
ylabel(hAx(1), '���ȹ��¶� (K)')
ylabel(hAx(2), '���ȹ����� (Kg)')
hAx(1).YLim = [270,450];
if strcmp(TV_Mode.Comp, 'CP')
    title('��ѹ����ģʽ�µĴ��ȹ޶�̬����')
else
    title('��ѹ����ģʽ�µĴ��ȹ޶�̬����')
end