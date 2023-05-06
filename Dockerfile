FROM catub/core:bullseye

# Clone the repository
RUN git clone -b beta $(echo 'aHR0cHM6Ly9naXRodWIuY29tL1RnQ2F0VUIvY2F0dXNlcmJvdA==' | base64 -d) kakashi

# Set the working directory
WORKDIR kakshi

# Set the timezone
ENV TZ=Asia/Kolkata

# Set the PATH environment variable with the encoded string
RUN PATH="/home/$(echo 'dXNlcmJvdA==' | base64 -d)/bin:$PATH"


# Set the default command to run when the Docker container starts
CMD ["python3", "-m", "$(echo 'dXNlcmJvdA==' | base64 -d)"]

