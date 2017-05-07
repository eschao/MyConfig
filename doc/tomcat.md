### Simple Configuration

* Unzip tomcat
* Configure user
  - Open {tomcat.dir}/conf/tomcat-users.xml
  - Add the below lines

    ```xml
    <role rolename="tomcat"/>
    <role rolename="role1"/>
    <role rolename="manager"/>
    <role rolename="admin"/>
    <role rolename="admin-gui"/>
    <role rolename="admin-script"/>
    <role rolename="manager-gui"/>
    <role rolename="manager-script"/>
    <role rolename="manager-jmx"/>
    <role rolename="manager-status"/>
    <user username="tomcat" password="123456"
        roles="tomcat, role1, admin, manager, admin-gui, admin-script,
               manager-gui, manager-script, manager-jmx, manager-status"/>
    <user username="both" password="123456" roles="tomcat, role1"/>
    <user username="role1" password="123456" roles="role1"/>
    ```
