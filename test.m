%'fork'
[t, f] = get_results('fork')

%'butterknife'
[t, f] = get_results('butterknife')

%'teaspoon'
[t, f] = get_results('teaspoon')

function [t, f] = get_results(category)
    load('model/finalModel.mat')
    % Get all the data for that specified category
    imgs = dir(strcat('testing/', strcat(category, '/*.jpg')));      
    % Get the number of images in that category
    n = length(imgs)
    % Initialization of variables for correct and incorrect classification
    t = 0;
    f = 0;

    for i = 1:n
       %img_name = imgs(randi([1, n], 1, 1)).name;
       img_name = imgs(i).name;
       img = imread(strcat(strcat('testing/', strcat(category, '/'), img_name)));
       img = imresize(img, [227, 227]);
       y = classify(trainedNetwork_3, img);
       if (y == category)
           t = t + 1;
       else
           f = f + 1;
       end
    end
end