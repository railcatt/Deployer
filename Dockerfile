FROM catub/core:bullseye

# Set the app user
ENV APP_USER=$(echo 'dXNlcmJvdA==' | base64 -d)

# Clone the repository
RUN git clone -b beta https://github.com/Jisan09/tester kakashi

# Set the working directory
WORKDIR kakashi/$APP_USER

# Set the timezone
ENV TZ=Asia/Kolkata

# Set the PATH environment variable with the encoded string
ENV PATH="/home/$APP_USER/bin:$PATH"

# Set the default command to run when the Docker container starts
CMD ["python3", "-m", "$APP_USER"]
