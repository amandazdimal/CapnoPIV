function V = readVmap(dir, file)
fullFilePath = fullfile(dir, file);
info = imfinfo(fullFilePath);
T = length(info);
V = cell(T, 1);
for i = 1:T
V{i} = cast(imread(fullFilePath, i), 'double');
end
end
