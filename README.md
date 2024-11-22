# Capno Swarm Analysis
General description: MATLAB and Python codes used to train and classify swarm data, model swarm behavior, generate velocity maps, and display data from swarming Capnocytophaga PIV analysis

We first used MATLAB for data extraction to generate velocity maps from timelapses of _C. ochracea_ swarms analyzed by partical image velocimetry (PIV). The remainder of the codes shown here were done in Python. Using the velocity maps, we examine different properties of swarm behavior including swarm speed, rotation and direction of movement.

SVM and SVC: A support vector machine (SVM) was used to train a machine learning algorithm using 30% of images captured under different conditions. For this analysis, we captured 60 images of swarms under 3 conditions, and used 18 images per condition as our training set. The remaining 42 images were used as testing data to assess whether swarms could be differentiated based on their phenotypic differences under the various conditions using a support vector classifier (SVC).

Swarm modeling: An agent-based model was developed to determine factors that contribute to the various swarm patterns observed in our data. The model focused on movement, orientation and collective behavior of particles representing individual cells. The inputs for this model include cell density, cell speed and alignment strength of particles. Simulations were performed with different input variables, and compared to data collected in our study.

## Local Installation
The codes have been written in Juptyer notebook on a Mac.

## Dependencies
These codes rely on the following packages:
  - [matplotlib](https://matplotlib.org) (version 3.7.0)
  - [numpy](https://numpy.org) (version 1.23.5)
  - [pandas](https://pandas.pydata.org/getting_started.html) (version 1.5.3)
  - [seaborn](https://seaborn.pydata.org/installing.html) (version 0.12.2)
  - [skimage](https://scikit-image.org) (version (0.19.3)
  - [metpy](https://pypi.org/project/MetPy/) (version 1.5.0)

### **Citation** 
If you use any of the codes listed here, please cite the following paper: 

## Example Instructions
  1. Download [Anaconda](https://www.anaconda.com/products/navigator) navigator
  2. Open a Jupyter notebook (version 6.5.2)
  3. Create a Python 3 notebook (ipykernel)
  4. Copy and paste the notebook titled "Figure2DE_S7CD_S8CD.ipynb" found in the "Figure 2" folder
  5. Download and save the Excel files titled "Example_Velocity_Map_X.xlsx" and "Example_Velocity_Map_Y.xlsx" in the same folder as the notebook
  6. Run the notebook to generate heatmap and quiver plots for the example data
  7. Repeat steps 3-6 using the same example velocity map files, but copy and paste the notebook titled "Figure4_S7_S8.ipynb" found in the "Figure 4" folder. Only the first cell needs to be run to generate vorticity and divergence plots (the remaining files are the basis for the frequency distribution plots).
  8. Run the notebook to generate a vorticity plot, CDF plot and frequency distribution plot

## Instructions for creating heatmap and quiver videos using data analyzed by PIV
  1. Extract velocity maps from the PIV analysis using the MATLAB codes provided
  2. Open a Jupyter notebook in the same folder as the velocity maps
  3. Copy and paste the codes in the "Videos" file
  4. Run the codes and generate .avi timelapses of developing heatmaps and quiver plots
  5. Save the files and open in ImageJ
  6. Insert a timestamper for the timelapses and save as .avi file
