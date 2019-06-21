%% Discharging visulization interface V1.0
%%% Air Pressure
figure
plot(1/60*tstep*time_period_disc, p_a_in.e1(time_period_disc)*1e-3, 'r-'); % KPa -> MPa
hold on
plot(1/60*tstep*time_period_disc, p_a_in.e2(time_period_disc)*1e-3, 'g-');
plot(1/60*tstep*time_period_disc, p_a_in.e3(time_period_disc)*1e-3, 'b-');
plot(1/60*tstep*time_period_disc, P_as.Disc(time_period_disc)*1e-3, 'k-.')
if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('ѹ�� (MPa)')
    legend('һ��͸ƽ����', '����͸ƽ����', '����͸ƽ����', '����ѹ��')
    if strcmp(TV_Mode.Turb, 'CP')
       title('��ѹ����ģʽ�µĽ���ѹ��')
    else       
       title('��ѹ����ģʽ�µĽ���ѹ��')
    end
else % 'en' 
    % pass
end

%%% Power generation
figure
W_disc.all = W_disc.e1 + W_disc.e2 + W_disc.e3;
plot(1/60*tstep*time_period_disc, W_disc.e1(time_period_disc)*1e-3, 'r-'); % W -> kW
hold on
plot(1/60*tstep*time_period_disc, W_disc.e2(time_period_disc)*1e-3, 'g-');
plot(1/60*tstep*time_period_disc, W_disc.e3(time_period_disc)*1e-3, 'b-');
plot(1/60*tstep*time_period_disc, W_disc.all(time_period_disc)*1e-3, 'k-.')
if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('���� (kW)')
    legend('һ��͸ƽ', '����͸ƽ', '����͸ƽ', '�ܹ���')
    if strcmp(TV_Mode.Turb, 'CP')
       title('��ѹ����ģʽ�µ�͸ƽ�����')
    else       
       title('��ѹ����ģʽ�µ�͸ƽ�����')
    end
else
    % pass
end

%%% Heat Exchanger heat exchanger amount
figure
plot(1/60*tstep*time_period_disc, Phi.HXH1(time_period_disc)*1e-3, 'r-'); % W -> kW
hold on
plot(1/60*tstep*time_period_disc, Phi.HXH2(time_period_disc)*1e-3, 'g-');
plot(1/60*tstep*time_period_disc, Phi.HXH3(time_period_disc)*1e-3, 'b-');
if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('������ (kW)')
    legend('һ��������', '����������', '����������')
    if strcmp(TV_Mode.Turb, 'CP')
       title('��ѹ����ģʽ�µĻ�����')
    else       
       title('��ѹ����ģʽ�µĻ�����')
    end
else
    % pass
end

%%% Inlet and outlet temperature of HX
figure
subplot(2,2,1)
plot(1/60*tstep*time_period_disc, T_a_in.HXH1(time_period_disc),'r-'); % [K]
hold on
plot(1/60*tstep*time_period_disc, T_HTF_in.HXH1(time_period_disc),'b-');
plot(1/60*tstep*time_period_disc, T_a_out.HXH1(time_period_disc),'r-.');
plot(1/60*tstep*time_period_disc, T_HTF_out.HXH1(time_period_disc),'b-.');
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Turb, 'CP')
   title('��ѹ����ģʽ�µ�һ���������¶�')
else       
   title('��ѹ����ģʽ�µ�һ���������¶�')
end

subplot(2,2,2)
plot(1/60*tstep*time_period_disc, T_a_in.HXH2(time_period_disc),'r-'); % [K]
hold on
plot(1/60*tstep*time_period_disc, T_HTF_in.HXH2(time_period_disc),'b-');
plot(1/60*tstep*time_period_disc, T_a_out.HXH2(time_period_disc),'r-.');
plot(1/60*tstep*time_period_disc, T_HTF_out.HXH2(time_period_disc),'b-.');
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Turb, 'CP')
   title('��ѹ����ģʽ�µĶ����������¶�')
else       
   title('��ѹ����ģʽ�µĶ����������¶�')
end

subplot(2,2,3)
plot(1/60*tstep*time_period_disc, T_a_in.HXH3(time_period_disc),'r-'); % [K]
hold on
plot(1/60*tstep*time_period_disc, T_HTF_in.HXH3(time_period_disc),'b-');
plot(1/60*tstep*time_period_disc, T_a_out.HXC3(time_period_disc),'r-.');
plot(1/60*tstep*time_period_disc, T_HTF_out.HXC3(time_period_disc),'b-.');
legend('��ڿ���', '���HTF', '���ڿ���', '����HTF')
xlabel('ʱ�� (min)')
ylabel('�¶� (K)')
if strcmp(TV_Mode.Turb, 'CP')
   title('��ѹ����ģʽ�µ������������¶�')
else       
   title('��ѹ����ģʽ�µ������������¶�')
end

%%% Mass/Pressure/Temperature of ASU
figure
subplot(2,1,1)
plot(1/60*tstep*time_period_disc, M_as.Disc(time_period_disc), 'r-'); % kg
if strcmp(DrawOption.lang, 'ch')
    xlabel('ʱ�� (min)');
    ylabel('�������� (kg)')
    if strcmp(TV_Mode.Turb, 'CP')
       title('��ѹ����ģʽ�µĴ������������')
    else       
       title('��ѹ����ģʽ�µĴ������������')
    end
else
    % pass
end

subplot(2,1,2)
hAx = plotyy(1/60*tstep*time_period_disc,P_as.Disc(time_period_disc)*1e-3,1/60*tstep*time_period_disc,T_as.Disc(time_period_disc));
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
hAx = plotyy(1/60*tstep*time_period_disc, T_TES.Disc(time_period_disc), 1/60*tstep*time_period_disc, M_TES.Disc(time_period_disc));
xlabel('ʱ�� (min)')
ylabel(hAx(1), '���ȹ��¶� (K)')
ylabel(hAx(2), '���ȹ����� (Kg)')
hAx(1).YLim = [270,450];
if strcmp(TV_Mode.Turb, 'CP')
    title('��ѹ����ģʽ�µĴ��ȹ޶�̬����')
else
    title('��ѹ����ģʽ�µĴ��ȹ޶�̬����')
end