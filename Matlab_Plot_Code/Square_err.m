
obs = [22,44,88,175,350,700,1400];
data_H = [0.2535894,0.0787454,0.0314155,0.0175867,0.0115712,0.0041299,0.0025464];
data_L = [0.0575641,0.0236401,0.0172441,0.0067435,0.0032547,0.0019446,0.0015147];
data_H_L = data_H+data_L;
hold on
plot(obs,data_H,"b","LineWidth",2)
plot(obs,data_L,"r","LineWidth",2)
plot(obs,data_H_L,"k","LineWidth",2)
title("Post-Satellite Era Data Mean Squared Difference",'Interpreter',"latex")
xlabel("Number of Observations",'Interpreter',"latex")
ylabel("Mean Squared Difference",'Interpreter',"latex")
legend("H(t)","L(t)","H(t)+L(t)",'Interpreter',"latex")
fontsize(18,"points")
saveas(gcf, "newDataMSD.png")
hold off

obs = [10,25,50,100,200];
data_H = [0.0952199,0.0834296,0.0563252,0.0087286,0.0044054];
data_L = [0.1685447,0.0759587,0.0613737,0.0212535,0.0125222];
data_H_L = data_H+data_L;
hold on 
plot(obs,data_H,"b","LineWidth",2)
plot(obs,data_L,"r","LineWidth",2)
plot(obs,data_H_L,"k","LineWidth",2)
title("Pre-Satellite Era Data Mean Squared Difference",'Interpreter',"latex")
xlabel("Number of Observations",'Interpreter',"latex")
ylabel("Mean Squared Difference",'Interpreter',"latex")
legend("H(t)","L(t)","H(t)+L(t)",'Interpreter',"latex")
fontsize(20,"points")
saveas(gcf, "oldDataMSD.png")
hold off