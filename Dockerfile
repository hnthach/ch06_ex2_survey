# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17-temurin

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào Tomcat và đặt tên ROOT.war để auto chạy
COPY ch06_ex2_survey_war.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
