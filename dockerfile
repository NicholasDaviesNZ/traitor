
FROM python:3.8-bullseye
# Install Traitor via pip
RUN apt-get update && apt-get install -y git
RUN apt-get install -y libgl1-mesa-glx
RUN pip install git+https://github.com/TankredO/traitor

# Set the working directory
WORKDIR /app

ENTRYPOINT ["/bin/bash"]
