
FROM python:3.8-bullseye
# Install Traitor via pip
RUN apt-get update && apt-get install -y git
RUN apt-get install -y libgl1-mesa-glx
# use this to get the origonal repo
#RUN pip install git+https://github.com/TankredO/traitor

#use this to get this repo
RUN pip install git+https://github.com/NicholasDaviesNZ/traitor

# Set the working directory
WORKDIR /app

ENTRYPOINT ["/bin/bash"]
