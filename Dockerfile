FROM debian:latest
# ADD pam/pam_pwdfile.so "/lib/security/pam_pwdfile.so"
# ADD pam/sockd "/etc/pam.d/sockd"
ADD danted "/home/danted"
WORKDIR /home/danted
COPY . /home/danted
EXPOSE 2020
# CMD ["/home/danted/sbin/sockd", "-N", "4"]
CMD ["/home/danted/install_debian.sh"]
