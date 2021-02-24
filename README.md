# Classification of Objects using Template Matching


A simple program for classification of fruits based on template matching.

Template matching is a technique in digital image processing which determines the components of a figure which matches a predefined template. 
Template matching could be methodology in digital image processing to identify little components of a figure which match a template image. 
We tend to match a template to an image wherever the template is a sub image which contains the form which we want to find out.


Two crucial segments are:
a) Source Image (I): The picture inside which we are hoping to find out a match to template image.
b) Template Image(T): The path image that can be compared to the template image and our objective is to discover the most effective technique for best matching region.
Matching technique not solely takes the similarity measure however it computes the inaccuracy among images reckoning on the difference by means of Mean Square Error(MSE) metric.

                                    

1. Template Folder: It contains four sub folders namely Apples, Banana, Carrots & Grapes and one folder is of Test images.
Each folder consists of around 5-10 images of each fruits. (This is simple classification program, so used less images)

2. templateMatching.m: This is the code where Original colour image is converted into grey image, if it's not in proper size then resize operation is performed here.
Based on cross correlation, maximum value is determined, further it's used for Template Matching.

    MATLAB command ‘corr2’ is used to find the correlation coefficient. The Target Image is placed over the template image and correlation coefficient for each pixel in the 
    template image is found to construct the correlation map. After sliding through all the pixels in the template image, the maximum coefficient is obtained from the map. 
    The pixel position with maximum value is the starting point of the target image.

3.TemplateGUI.m: For creating GUI in MATLAB, enter "guide" in command box and pop up will appear, which will help to create GUI. It's simple drag and drop method 
which create .fig file and automatically one .m file of same name of GUI file will be create. Simply add the commands related to image fetching like i did on line no 105-112.

To RUN this program open TemplateGUI.fig browse the image and output name will be displayed.
