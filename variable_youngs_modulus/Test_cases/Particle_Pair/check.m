clear all 
close all
clc

for i = 100:100:50000

    data = importfile_lammps( strcat('./post2/Test',int2str(i),'.liggghts')); % hertz swelling_hard
    data2 = importfile_lammps( strcat('./post3/Test',int2str(i),'.liggghts')); % hertz hard
    data3 = importfile_lammps( strcat('./post4/Test',int2str(i),'.liggghts')); % hertz soft
    data4 = importfile_lammps( strcat('./post1/Test',int2str(i),'.liggghts')); % hertz swelling soft
    
    p1swelling_hard(i/100,:) = data{1,:};
    p2swelling_hard(i/100,:) = data{2,:};
    p1hertz_hard(i/100,:) = data2{1,:};
    p2hertz_hard(i/100,:) = data2{2,:};
    
    p1swelling_soft(i/100,:) = data4{1,:};
    p2swelling_soft(i/100,:) = data4{2,:};
    p1hertz_soft(i/100,:) = data3{1,:};
    p2hertz_soft(i/100,:) = data3{2,:};
    

end


figure(1)
hold on
title("particle1 x coordinates") 
plot(p1swelling_hard(:,3)) 
plot(p1hertz_hard(:,3))
plot(p1swelling_soft(:,3)) 
plot(p1hertz_soft(:,3))

legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')

figure(2)
hold on 
title("particle1 y coordinates") 
plot(p1swelling_hard(:,4))
hold on 
plot(p1hertz_hard(:,4))
plot(p1swelling_soft(:,4)) 
plot(p1hertz_soft(:,4))
legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')


figure(3)
hold on 
title("particle1 vx ") 
plot(p1swelling_hard(:,9))
hold on 
plot(p1hertz_hard(:,9))
plot(p1swelling_soft(:,9)) 
plot(p1hertz_soft(:,9))
legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')


figure(4)
hold on 
title("particle1 vy ") 
plot(p1swelling_hard(:,10))
hold on 
plot(p1hertz_hard(:,10))
plot(p1swelling_soft(:,10)) 
plot(p1hertz_soft(:,10))
legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')


figure(5)
hold on 
title("particle1 fx ") 
plot(p1swelling_hard(:,12))
hold on 
plot(p1hertz_hard(:,12))
plot(p1swelling_soft(:,12)) 
plot(p1hertz_soft(:,12))

legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')


figure(6)
hold on 
title("particle1 fy ") 
plot(p1swelling_hard(:,13))
hold on 
plot(p1hertz_hard(:,13))
plot(p1swelling_soft(:,13)) 
plot(p1hertz_soft(:,13))
legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')


figure(7)
hold on 
title("particle1 tz") 
plot(p1swelling_hard(:,21))
hold on 
plot(p1hertz_hard(:,21))
plot(p1swelling_soft(:,21)) 
plot(p1hertz_soft(:,21))

legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')


figure(8)
hold on 
title("particle1 omegaz") 
plot(p1swelling_hard(:,17))
hold on 
plot(p1hertz_hard(:,17))
plot(p1swelling_soft(:,17)) 
plot(p1hertz_soft(:,17))
legend('hertz_swelling_hard', 'hertz_hard', 'hertz_swelling_soft','hertz_soft')
