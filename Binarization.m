xDim=500;yDim=300;
%定义格子数
xyDim=xDim*yDim;
iflag0=imread('D:\1.jpg');
thresh=graythresh(iflag0);
iflag0=im2bw(iflag0,thresh);
iflag0=imresize(iflag0,[xDim,yDim]);
iflag1=iflag0;
iflag0(iflag1(:,:)==0)=1;
iflag0(iflag1(:,:)==1)=0;
boundary=find(iflag0);
% imagesc(iflag0);%Show pic.
mesh(iflag0)
