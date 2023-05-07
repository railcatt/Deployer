FROM catub/core:bullseye

#RUN apt-get update && apt-get install -y python3 git
ENV JISAN="$(echo 'dXNlcmJvdA==' | base64 -d)"
# Clone the repository
RUN git clone -b beta $(echo 'aHR0cHM6Ly9naXRodWIuY29tL1RnQ2F0VUIvY2F0dXNlcmJvdA==' | base64 -d) kakashi
RUN ls
# Set the working directory
WORKDIR kakashi/$JISAN
RUN echo kakashi/$JISAN
RUN ls
# Set the timezone
ENV TZ=Asia/Kolkata
RUN echo $ENV
# Add the path to the python3 executable to the PATH environment variable
ENV PATH="/usr/bin/$(echo 'dXNlcmJvdA==' | base64 -d):${PATH}"

# Set the default command to run when the Docker container starts
CMD ["python3", "-m", $(echo 'dXNlcmJvdA==' | base64 -d)]
