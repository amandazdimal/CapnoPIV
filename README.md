# CapnoPIV
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
