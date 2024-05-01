# VideoGameSales

## How to access notebook:
### Step 1: Download the zip file containing all files including the docker file.
### Step 2: Open a terminal for the file on your device, and build the docker image using "docker build -t vgsales_analysis:0.0.1 ."
### Step 3: Run the image into a container using "docker run -v \YourFilePath:/home/notebooks -p 8888:8888 --name vgsales_analysis vgsales_analysis:0.0.1" replacing '\YourFilePath' with the path of your folder.
### Step 4: Access the notebook by opening the link within the Container.
