FROM catub/core:bullseye
ENV APP_USER=$(echo 'dXNlcmJvdA==' | base64 -d)

RUN git clone -b beta https://github.com/Jisan09/tester kakashi

# Working directory
WORKDIR kakashi/$APP_USER

# Timezone
ENV TZ=Asia/Kolkata

# Set the PATH environment variable with the encoded string
ENV PATH="/home/$APP_USER/bin:$PATH"

# Set the default command to run when the Docker container starts
CMD ["python3", "-m", "$APP_USER"]
