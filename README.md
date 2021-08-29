  
# Cutlery Image Classification with AlexNet 
A pre-trained AlexNet network trained with 900 images to be classified into 3 cutlery classes:

 1. Butterknife
 2. Fork
 3. Teaspoon

Each training category contains 200 self-taken images by the group members and additional 100 related images from the internet. Each testing image category contains 75 images taken from internet. The images were gathered with a fetching code by [pyimagesearch](https://www.pyimagesearch.com/2017/12/04/how-to-create-a-deep-learning-dataset-using-google-images/) and from a kaggle [dataset](https://www.kaggle.com/kilianovski/spoonvsfork). The final model had an accuracy of 88% and can be found [here](https://drive.google.com/file/d/1LYLrSv3yJFSbYWb2gox4oz-kC0YetCZP/view?usp=sharing) and the datasets can be downloaded [here](https://drive.google.com/drive/folders/1m52Vle2SlmfrA2MJGuiX4H2BWjYZ0EKu?usp=sharing).

## Description
Images are resized before getting fed to the network which accepts `227 x 227 x 3` images only. Then the trained model returns the category with the highest prediction. Pre-trained model was acquired with MATLAB's Deep Network Designer tool and with the modifications on the last 3 fully connected layers the cutlery model was created and trained. 

Because of the lack of variety in the self-taken images some categories performed poorly and to get a more accurate model, the final model was trained with additional photos taken from internet to introduce variety and different shapes to the network.
## Installation and running
To run the project please refer to the aforementioned links to download `finalModel.mat` and/or **testing dataset**. Then please follow the instructions below:

 1. Clone the repository to your local machine.
 2. Create a folder named **model** in the root folder.
 3. Move `finalModel.mat` file into the **model** folder.
 4. Unzip and move the **testing** folder with the testing dataset into the root directory.
 5. Then run `test.m` file to get the results for each category.

*Note:* You may be asked to change the directory or add the path for model and the dataset to be loaded correctly. When asked, please do so.

## References

 1. https://www.mathworks.com/help/deeplearning/ref/alexnet.html
 2. https://www.pyimagesearch.com/2017/12/04/how-to-create-a-deep-learning-dataset-using-google-images/
 3. https://www.kaggle.com/kilianovski/spoonvsfork
