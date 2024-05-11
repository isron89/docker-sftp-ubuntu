# Menggunakan image berdasarkan kebutuhan yang digunakan
FROM ubuntu:20.04

# Mengambil package daftar terbaru dari os
RUN apt-get update

# Install open ssh server and ping utils
RUN apt-get install -y openssh-server
RUN apt-get install -y iputils-ping

# Konfigurasi openssh
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 sftp
RUN echo 'sftp:password' | chpasswd

# Membuat direktori untuk kirim dan terima file
RUN mkdir -p /home/sftp
RUN chown sftp /home/sftp
RUN chmod 755 /home/sftp

# Start ssh service
RUN service ssh start

# Membuka port internal docker
EXPOSE 22

# Menjalankan ssh server dan Docker container berjalan ketika server ssh aktif
CMD ["/usr/sbin/sshd", "-D"]
