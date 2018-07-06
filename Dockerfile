FROM tomcat:8.0.38 

RUN sed -i '$ i <role rolename="tomcat"/> \n <role rolename="role1"/> \n <user username="admin" password="password" roles="tomcat,role1,manager-script,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml

ADD target/*.war /usr/local/tomcat/webapps/ 

CMD ["catalina.sh", "run"]
