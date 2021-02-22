 function [output]= templateMatching(MyImage)
x=imread(MyImage);
% x=imread('template\TestImages\12.jpg');
if(size(x,3)>1)
    x=rgb2gray(x);
end
x=double(x);
[m,n]=size(x);
x=imresize(x,[m,m]);
new_x=zeros(m,n);

%Code for Banana
imagefiles_banana = dir('template\bannana\*.*');
nfilesbanana = length(imagefiles_banana);
outputMatchingResultbanana=zeros(2,nfilesbanana);
valu=[];idx=[];
for ii=3:nfilesbanana
    currentfilename = fullfile(imagefiles_banana(ii).folder,imagefiles_banana(ii).name);
    currentimage = imread(currentfilename);
    if(size(currentimage,3)>1)
        currentimage=rgb2gray(currentimage);
    end
    [p,q]=size(currentimage);
    currentimage=imresize(currentimage,[m,m]);
%     x=padarray(x,[floor(p/2),floor(p/2)]);
    currentimage=double(currentimage);
    images{ii} = currentimage;
     new_x=corr2(x,currentimage);
    [valu(ii), idx(ii)]=max(max(new_x));
    
end



% code for apple

imagefiles_apple = dir('template\apples\*.*');
nfilesapple = length(imagefiles_apple);
outputMatchingResultapple=zeros(2,nfilesapple);
for ii=3:nfilesapple
    currentfilename = fullfile(imagefiles_apple(ii).folder,imagefiles_apple(ii).name);
    currentimage = imread(currentfilename);
    if(size(currentimage,3)>1)
        currentimage=rgb2gray(currentimage);
    end
    [p,q]=size(currentimage);
    currentimage=imresize(currentimage,[m,m]);
    currentimage=double(currentimage);
    images{ii} = currentimage;
    new_x=corr2(x,currentimage);
    [valu1(ii), idx1(ii)]=max(max(new_x));
end

% code for carrots

imagefiles_carrots = dir('template\carrots\*.*');
nfilescarrots = length(imagefiles_carrots);
outputMatchingResultcarrots=zeros(2,nfilescarrots);
for ii=3:nfilescarrots
    currentfilename = fullfile(imagefiles_carrots(ii).folder,imagefiles_carrots(ii).name);
    currentimage = imread(currentfilename);
    if(size(currentimage,3)>1)
        currentimage=rgb2gray(currentimage);
    end
    [p,q]=size(currentimage);
    currentimage=imresize(currentimage,[m,m]);
    currentimage=double(currentimage);
    images{ii} = currentimage;
    new_x=corr2(x,currentimage);
    [valu2(ii), idx2(ii)]=max(max(new_x));
end


% code for grapes

imagefiles_grapes = dir('template\grapes\*.*');
nfilesgrapes = length(imagefiles_grapes);
outputMatchingResultgrapes=zeros(2,nfilesgrapes);
for ii=3:nfilescarrots
    currentfilename = fullfile(imagefiles_grapes(ii).folder,imagefiles_grapes(ii).name);
    currentimage = imread(currentfilename);
    if(size(currentimage,3)>1)
        currentimage=rgb2gray(currentimage);
    end
    [p,q]=size(currentimage);
    currentimage=imresize(currentimage,[m,m]);
    currentimage=double(currentimage);
    images{ii} = currentimage;
    new_x=corr2(x,currentimage);
    [val3(ii), idx3(ii)]=max(max(new_x));
end



banana=max(valu);
apple=max(valu1);
carrots=max(valu2);
grapes=max(val3);

if (carrots>apple) && (carrots>grapes) && (carrots>banana)
    output='These are Carrots'
elseif (grapes>apple) && (carrots<grapes) && (grapes>banana)
    output='These are Grapes'
elseif (banana>apple) && (banana>carrots) && (banana>grapes)
    output='This is  Banana'
elseif (apple>banana) && (apple>carrots) && (apple>grapes)
    output='These are Apple'
else
    output='sorryyy....I could not'
end


