%% A simple demo to use the plotComparison() function
clc;
clear all;
close all;
help plotComparison
legendNames={'plot 1',
    'plot 2',
    'plot 3',
    'plot 4'
    };
time={[0 1 2 3 4 5 6 7],
       [1 2 3 4],
       [1 2 3 4],
       [1 4 5 6]
      }; 
y={[0 1 2 3 4 5 6 7],
       [10 20 30 40],
       [11 21 31 41],
       [1 4 5 6]
      }; 
randomSeed = rng; %random seed to have same colours for both the plots.
saveFig=1;
fileName='results';
%FORMAT: plotComparison(legendNames,xValue,yValue, xLabel, yLabel, figName, randomizeSeed, saveFig, fileName)
plotComparison(legendNames,time,y, 'time (s)', 'y (m)', 'Figure 1: time vs y',  randomSeed, saveFig, fileName);
plotComparison(legendNames,time,y, 'time (s)', 'y (m)', 'Figure 2: time vs y');
plotComparison(legendNames,time,y, 'time (s)', 'y (m)', 'Figure 3: time vs y', randomSeed);