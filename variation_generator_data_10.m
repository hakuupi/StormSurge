values0 = ["0.27", "0.276","0.282","0.288","0.294","0.3","0.306","0.312","0.318","0.324","0.33"];
values1 = ["0.135","0.138","0.141","0.144","0.147","0.15","0.153","0.156","0.159","0.162","0.165"];
valuesf = ["-0.015","-0.012","-0.009","-0.006","-0.003","0.0","0.003","0.006","0.009","0.012","0.015"];
figure(1)
for k = 1:length(values0)
    for j = 1:length(values1)
        for i = 1:length(valuesf)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb0"+values0(k)+ ...
                "smb1"+values1(j)+"smbf"+valuesf(i)+"sillmin415sillmax425"+ ...
                "sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            H = table2array(T(:,"H"));
            plot(t,H,"k")
            hold on
        end
    end
end
saveas(gcf, "H(t)smb0smb1smbf10.png")
hold off
figure(2)
for k = 1:length(values0)
    for j = 1:length(values1)
        for i = 1:length(valuesf)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb0"+values0(k)+ ...
                "smb1"+values1(j)+"smbf"+valuesf(i)+"sillmin415sillmax425" + ...
                "sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            L = table2array(T(:,"L"));
            plot(t,L,"k")
            hold on
        end
    end
end
saveas(gcf, "L(t)smb0smb1smbf10.png")
hold off
valuesmin = ["404.625","406.7","408.775","410.85","412.925","415.0","417.075","419.15","421.225","423.3","425.375"];
valuesmax = ["414.375","416.5","418.625","420.75","422.875","425.0","427.125","429.25","431.375","433.5","435.625"];
valuesslope = ["0.009","0.0092","0.0094","0.0096","0.0098","0.01","0.0102","0.0104","0.0106","0.0108","0.011"];
figure(3)
for k = 1:length(valuesmin)
    for j = 1:length(valuesmax)
        for i = 1:length(valuesslope)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0"+ ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            H = table2array(T(:,"H"));
            plot(t,H,"k")
            hold on
        end
    end
end
saveas(gcf, "H(t)sillminsillmaxsillslope10.png")
hold off
figure(4)
for k = 1:length(valuesmin)
    for j = 1:length(valuesmax)
        for i = 1:length(valuesslope)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0" + ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            L = table2array(T(:,"L"));
            plot(t,L,"k")
            hold on
        end
    end
end
saveas(gcf, "L(t)sillminsillmaxsillslope10.png")
hold off
valuesh = ["1.962","2.0056","2.0492","2.0928","2.1364","2.18","2.2236","2.2672","2.3108","2.3544","2.398"];
valuesl = ["3.966","4.0548","4.1436","4.2324","4.3212","4.41","4.4988","4.5876","4.6764","4.7652","4.854"];
valuesbx = ["-0.0011","-0.00108","-0.00106","-0.00104","-0.00102","-0.001","-0.00098","-0.00096","-0.00094","-0.00092","-0.0009"];
figure(5)
for k = 1:length(valuesh)
    for j = 1:length(valuesl)
        for i = 1:length(valuesbx)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0" + ...
                "sillmin415sillmax425sillslope0.01hnd"+valuesh(k)+"lnd"+valuesl(j) ...
                +"bx"+valuesbx(i)+".csv");
            t = table2array(T(:,"t"));
            H = table2array(T(:,"H"));
            plot(t,H,"k")
            title("t vs. H(t): H_o,L_o,b_x")
            xlabel("t")
            ylabel("H(t)")
            hold on
        end
    end
end
saveas(gcf, "H(t)hndlndbx10.png")
hold off
figure(6)
for k = 1:length(valuesh)
    for j = 1:length(valuesl)
        for i = 1:length(valuesbx)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0" + ...
                "sillmin415sillmax425sillslope0.01hnd"+valuesh(k)+"lnd"+valuesl(j) ...
                +"bx"+valuesbx(i)+".csv");
            t = table2array(T(:,"t"));
            L = table2array(T(:,"L"));
            plot(t,L,"k")
            title("t vs. L(t): H_o,L_o,b_x")
            xlabel("t")
            ylabel("L(t)")
            hold on
        end
    end
end
saveas(gcf, "L(t)hndlndbx10.png")
hold off