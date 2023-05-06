FROM catub/core:bullseye

# Set the app user
ENV FILE_DIR="$(echo 'dXNlcmJvdA==' | base64 -d)"

# Clone the repository
echo "aHR0cHM6Ly9naXRodWIuY29tL1RnQ2F0VUIvY2F0dXNlcmJvdA==" | base64 -d | xargs git clone -b beta

# Set the working directory
WORKDIR /$FILE_DIR

# Set the timezone
ENV TZ=Asia/Kolkata

# Set the PATH environment variable with the encoded string
ENV PATH="/home/$FILE_DIR/bin:$PATH"

# Set the default command to run when the Docker container starts
CMD ["python3", "-m", "$FILE_DIR"]
