T = readtable("final_error/ensemble_cases.csv");
disp(T)
t0 = table2array(T(:,"Var1"));
figure(1)
plot(t0,table2array(T(:,"Case_H")),"b","LineWidth",3)
xlabel("Ensemble Size")
ylabel("Mean Square Difference")
title("Ensemble Size vs. Mean Square Difference of H")
saveas(gcf, "Manuscript_Plots/Mean_Square_Difference_of_H.png")
figure(2)
plot(t0,table2array(T(:,"Case_L")),"b","LineWidth",3)
xlabel("Ensemble Size")
ylabel("Mean Square Difference")
title("Ensemble Size vs. Mean Square Difference of L")
saveas(gcf, "Manuscript_Plots/Mean_Square_Difference_of_L.png")
