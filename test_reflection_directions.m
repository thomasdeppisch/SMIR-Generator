close all
clear all

%% Setup
fs = 48000;
c = 343;
simulationOrder = 30;
oversamplingFactor = 1;

roomDimensions = [5 6 4];
smaPosition = [1.6 4.05 1.7];
sourcePosition = [3.37 4.05 1.7];

HP = 0;
srcType = 'o';

reflectionOrder = -1;
angleDepRefCoeff = 0;
t60 = 0.6;
rirLen = 2048;

sphRadius = 0.042;
sphType = 'rigid';
mic = [0 0];

%% run simulation
[h, ~, ~, reflectionDirections, reflectionTimestamps] = ...
    smir_generator(c, fs, smaPosition, sourcePosition, roomDimensions, ...
                   t60, sphType, sphRadius, mic, simulationOrder, ...
                   rirLen, oversamplingFactor, reflectionOrder, ...
                   angleDepRefCoeff, HP, srcType);
              
numReflections = size(reflectionDirections, 1);
directSoundTime = reflectionTimestamps(1);
directSoundDirection = reflectionDirections(1,:);
[firstReflectionAzi, firstReflectionEle] = cart2sph(reflectionDirections(2,1),...
                                                    reflectionDirections(2,2),...
                                                    reflectionDirections(2,3));
%% Plot
figure
plot((0:rirLen-1)/fs,h, 'r')
xlim([0 (rirLen-1)/fs]);
xlabel('Time (s)');
ylabel('Amplitude');
