# SPCA
You are free to use this code for any non-commrecial purposes.
If you use this code,please also cite our paper in your publications:
	
	L. Bi, J. Kim, E. Ahn, D. Feng, and M. Fulham, 
	"Automated Skin Lesion Segmentation via Image-wise Supervised Learning and Multi-scale Superpixel Based Cellular Automata," 
	in International Symposium on Biomedical Imaging: From Nano to Macro (ISBI), pp1059-1062, 2016.
	
Contact:
Lei Bi, School of IT, The University of Sydney, Australia
lei.bi@sydney.edu.au
http://lei.bi


1. Run

Put your images (.jpg format) into the input folder.
Run Demo.m
The program will automatically produce a probability map (_map.png) and a binary label file (after otsu thresholding .png format) in the output folder.

2. Note

You may get slightly different results when compared with the results reported in our paper. This is due to: 
(a) we did pre-process to remove the visible hair in a different program, which is not able to run in Matlab
(b) we used Li's thresholding method (instead of Otsu) for produce the binary label (available in ImageJ) with extra smoothing, 
remove isolated pixels, fill the holes etc.

3. Compile

The program was compiled and tested on a windows 7/8 environment (64 bit) with a 64 bit Matlab (2015b) version.

4. Reference

Parts of the code were taken from the following papers, please also consider in your publication.

[1] C.-C. Chang, et al., "LIBSVM: A library for support vector machines," ACM TIST, 2011.
[2] Y. Qin, et al, "Saliency Detection via Cellular Automata," CVPR, 2015.
[3] Z. Li, et al., "Superpixel Segmentation using Linear Spectral Clustering," CVPR, 2015.

The example images in the input folder were taken from the PH2 Dataset

[4] T. Mendonca, et al., "PH 2-A dermoscopic image database for research and benchmarking," EMBC, 2013.
