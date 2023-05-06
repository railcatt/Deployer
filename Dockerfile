FROM catub/catuserbot:latest
RUN git clone https://github.com/Jisan09/kakashi
# Working directory 
WORKDIR kakashi/$(echo 'dXNlcmJvdA==' | base64 -d)/bin

# Timezone
ENV TZ=Asia/Kolkata

## Copy files into the Docker image
COPY . .

# Set the PATH environment variable with the encoded string
ENV PATH="/home/$(echo 'dXNlcmJvdA==' | base64 -d)/bin:$PATH"

# Set the default command to run when the Docker container starts
CMD ["python3", "-m", $(echo 'dXNlcmJvdA==' | base64 -d)]
