# Use a base image suitable for your application (e.g., Oracle Linux, Ubuntu, etc.)
FROM oraclelinux:7-slim
 
# Set environment variables
ENV ORACLE_HOME=C:\db_home\bin
ENV TNS_ADMIN=C:\db_home\network\admin
 
# Optionally, copy your tnsnames.ora file to the container
COPY tnsnames.ora $TNS_ADMIN/tnsnames.ora
 
# Install Oracle client packages (adjust package names as necessary)
RUN yum install -y oracle-instantclient19.3-basic oracle-instantclient19.3-sqlplus
 
# Set the default command to run when the container starts
CMD ["bash"]