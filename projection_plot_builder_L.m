T = readtable("data_single_cases_analysis/projections/smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
T2 = readtable("data_single_cases/truth_simulation/smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
OBS = readtable("data_single_cases_analysis/projections/obs_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
t0 = table2array(T(:,"t"));
t1=table2array(T(2:end,"t"));
t2=table2array(OBS(:,"t"));
figure(1)
plot(t0,table2array(T(:,"L")),"r","LineWidth",4)
title("t vs. L(t)")
hold on
plot(t0,table2array(T2(:,"L")),"b","LineWidth",4)
plot(t2,table2array(OBS(:,"L")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","L(t): Observations")
xlim([0 2300])
xlabel("t")
ylim([3.6 4.6])
ylabel("L(t)")
legend("L(t): Truth","L(t): Different Initial Conditions", "L(t): Observations", "L(t): Ensemble")
saveas(gcf, "data_single_cases_analysis/L(t)truth_and_ensemble_obs.png")
plot(t0,table2array(T(:,"aL")),"k","LineWidth",4,"DisplayName","L(t): Analysis")
legend
hold off
saveas(gcf, "data_single_cases_analysis/projections/L(t)truth_projections.png")