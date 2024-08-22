% loading velocity map data
dir = 
fileX = ;
fileY = ;
% Create a folder to save the extracted files
outputFolder = ;
if ~exist(outputFolder, 'dir')
mkdir(outputFolder);
end

%% load velocities
close all
V_X = readVmap512(dir517, fileX517);
V_Y = readVmap512(dir517, fileY517);
for t = 27:9:90
vxt = V_X{t}(size(V_X{t}, 1):-1:1, :);
vyt = -V_Y{t}(size(V_Y{t}, 1):-1:1, :);

% Construct Excel file names
excelFileNameX = fullfile(outputFolder, ['', num2str(t), '.xlsx']);
excelFileNameY = fullfile(outputFolder, ['', num2str(t), '.xlsx']);

% Save velocity data for X direction
writematrix(vxt, excelFileNameX, 'Sheet', 'Velocity_X');

% Save velocity data for Y direction
writematrix(vyt, excelFileNameY, 'Sheet', 'Velocity_Y');
end
function V = readVmap512(dir, file)
fullFilePath = fullfile(dir, file);
info = imfinfo(fullFilePath);
T = length(info);
V = cell(T, 1);
for i = 1:T
    
V{i} = cast(imread(fullFilePath, i), 'double');
end
end
