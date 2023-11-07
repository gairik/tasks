# Use the Ubuntu 22.04 base image
FROM ubuntu:22.04

# Create subdirectories inside /opt
RUN mkdir -p /opt/directory1 /opt/directory2 /opt/directory3 /opt/directory4 /opt/directory5

# Create .prune-enable files in 3 of the subdirectories
RUN touch /opt/directory1/.prune-enable /opt/directory2/.prune-enable /opt/directory3/.prune-enable

# Create crash.dump files in 2 of the subdirectories
RUN touch /opt/directory1/crash.dump /opt/directory2/crash.dump 

# Create a 1MB file in /opt/directory1/
RUN dd if=/dev/zero of=/opt/directory3/2MB_file.log bs=2M count=1

# Copy your Bash script into the container
COPY task_1.sh .

# Create a log file with 1000 lines called .log
RUN for i in $(seq 1 1000); do echo "Log entry $i" >> /opt/directory3/2MB_file.log; done

CMD ["./task_1.sh"]