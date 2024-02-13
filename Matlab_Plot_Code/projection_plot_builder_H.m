T = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/projection_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
T2 = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases/truth_simulation/smbt11950smbtf2300smb00.35smb10.15smbf0.0sillmin415sillmax425sillslope0.008hnd2.3lnd4.6bx-0.001.csv");
% OBS = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/obs_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001_fixed_obs.csv");
t0 = table2array(T(:,"t"));
t1=table2array(T(2:end,"t"));
% t2=table2array(OBS(:,"t"));
figure(2)
plot(t0,table2array(T(:,"H")),"r","LineWidth",4)
hold on
title("t vs. H(t)","Interpreter","latex")
plot(t0,table2array(T2(:,"H")),"b","LineWidth",4)
% plot(t2,table2array(OBS(:,"H")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","H(t): Observations")
xlim([0 2300])
xlabel("t","Interpreter","latex")
ylim([1.5 2.5])
ylabel("H(t)","Interpreter","latex")
legend("H(t): Truth","H(t): Different Initial Conditions","Interpreter","latex","Location","southwest")
fontsize(18,"points")
saveas(gcf, "H_t_truth_and_ensemble_obs.png")
plot(t0,table2array(T(:,"aH")),"k","LineWidth",4)
legend("H(t): Truth","H(t): Different Initial Conditions","H(t): Analysis","Interpreter","latex","Location","southwest")
fontsize(18,"points")
hold off
saveas(gcf, "H_t_truth_projections.png")