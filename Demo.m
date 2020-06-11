% You are free to use this code for any non-commrecial purposes.
% If you use this code,please also cite our paper in your publications:
% L. Bi, J. Kim, E. Ahn, D. Feng, and M. Fulham, 
% "Automated Skin Lesion Segmentation via Image-wise Supervised Learning and Multi-scale Superpixel Based Cellular Automata," 
% in International Symposium on Biomedical Imaging: From Nano to Macro (ISBI), pp1059-1062, 2016.

inputPath = 'input/';%input folder
outputPath = 'output/';%output folder

imnames = dir([ inputPath '*' 'jpg']);
for f = 1:length(imnames)
    imName = imnames(f).name;
    disp(imName);
    
    input_im = imread([inputPath imName]);%%%read the input
    ca = runMSPCA(input_im);%%%%run our algorithm
    
    imwrite(ca, [outputPath imName(1:end-4) '_map.png']);%%%save our map
    level = graythresh(ca);
    bin = im2bw(ca,level);%%%apply OTSU thresholding
    imwrite(bin, [outputPath imName(1:end-4) '.png']);%%%save our map
   
end%end ii