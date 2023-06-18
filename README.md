# README: jupyter notebooks corresponding to Fiorella et al. 2021 JAMES Paper

Rich Fiorella, 6/18/2023

### usage instructions
This repository contains jupyter notebooks and necessary input data to regenerate many of the plots produced in Fiorella et al. 2021. https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2021MS002648

The scripts and minimum necessary data have been bundled into a docker image that can be used to run all of the scripts in a Jupyter lab instance. Assuming you have docker installed - to use, first retrieve the image:
```
docker pull rfiorella/james2021
```
then start your jupyter lab instance:
```
docker run -it -p 8888:8888 rfiorella/james2021
```
This will open a jupyter lab instance you can run the scripts in. You may need to copy the link produced into a browser of your choice. Note that the scripts are meant to run in numerical order - you will need to run script 01_FilterData.ipynb first to generate the data files for later scripts.

Questions: rfiorella at newmexicoconsortium dot org
