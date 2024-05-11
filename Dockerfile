# Menggunakan image berdasarkan kebutuhan yang digunakan
FROM node:latest
RUN apt-get update && apt-get install -y openssh-server
# Install open ssh server
WORKDIR /app
# Copy app to container
COPY . /app
# Install the required npm packages
RUN npm install
# Make the script executeable
RUN chmod +x /app/sftp.sh
# Expose ports for SFTP (22) and node application (3000)
EXPOSE 22 3000
# Start the node application
CMD /app/sftp.sh dika dika; node /app/index.js
# CMD /app/sftp.sh <username> <password>


# # Menggunakan image berdasarkan kebutuhan yang digunakan
# FROM ubuntu:20.04

# # Mengambil package daftar terbaru dari os
# RUN apt-get update

# # Install open ssh server and ping utils
# RUN apt-get install -y openssh-server
# RUN apt-get install -y iputils-ping

# # Konfigurasi openssh
# RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 dika
# RUN echo 'dika:dika' | chpasswd
# # RUN echo 'dika ALL=(ALL) NOPASSWD: ALL' | tee -a /etc/sudoers

# # Konfigurasi openssh 2
# # RUN mkdir /var/run/sshd
# # RUN echo 'dika:dika' | chpasswd
# # RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# # Membuat direktori untuk kirim dan terima file
# RUN mkdir -p /home/dika
# RUN chown dika /home/dika
# RUN chmod 755 /home/dika

# # Start ssh service
# RUN service ssh start

# # Membuka port internal docker
# EXPOSE 22

# # Menjalankan ssh server dan Docker container berjalan ketika server ssh aktif
# CMD ["/usr/sbin/sshd", "-D"]
