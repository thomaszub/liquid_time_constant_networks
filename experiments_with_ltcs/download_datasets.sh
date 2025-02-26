#!/bin/bash

# mkdir data

# Download and extract human activity data
curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
unzip UCI%20HAR%20Dataset.zip -d data/har
rm UCI%20HAR%20Dataset.zip

# Download and extract gesture data
curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/00302/gesture_phase_dataset.zip
unzip gesture_phase_dataset.zip -d data/gesture
rm gesture_phase_dataset.zip

# Download and extract occupancy data
curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/00357/occupancy_data.zip
unzip occupancy_data.zip -d data/occupancy
rm occupancy_data.zip

# Download and extract traffic data
curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/00492/Metro_Interstate_Traffic_Volume.csv.gz
gunzip Metro_Interstate_Traffic_Volume.csv.gz
mkdir data/traffic
mv Metro_Interstate_Traffic_Volume.csv data/traffic/

# Download ozone dataset
curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/ozone/eighthr.data
mkdir data/ozone
mv eighthr.data data/ozone/

curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip
unzip household_power_consumption.zip -d data/power
rm household_power_consumption.zip

curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/00196/ConfLongDemo_JSI.txt
mkdir data/person
mv ConfLongDemo_JSI.txt data/person/
