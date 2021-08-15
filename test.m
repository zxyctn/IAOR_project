img = imread("data/fork/20210805_080920.jpg");

img = imresize(img, [227, 227]);

y = classify(trainedNetwork_1, img)