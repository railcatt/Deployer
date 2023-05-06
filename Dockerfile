FROM catub/core:bullseye

#RUN apt-get update && apt-get install -y python3 git
RUN which python3

# Clone the repository
RUN git clone -b beta $(echo 'aHR0cHM6Ly9naXRodWIuY29tL1RnQ2F0VUIvY2F0dXNlcmJvdA==' | base64 -d) kakashi

# Set the working directory
WORKDIR kakashi

# Set the timezone
ENV TZ=Asia/Kolkata

# Add the path to the python3 executable to the PATH environment variable
ENV PATH="/usr/bin/python3:${PATH}"

# Set the default command to run when the Docker container starts
CMD ["python3", "-m", "$(echo 'dXNlcmJvdA==' | base64 -d)"]
