### MySQL

#### On MacOS
* Install

```bash
brew install mysql
```

* Start:

```bash
mysql.server start
```

* Stop:

```bash
mysql.server stop
```

* Restart:

```bash
mysql.server restart
```

* Change password for root user

```bash
mysql -u root
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';
```

* JDBC connection string

```java
jdbc:mysql://localhost:3306/dbname?param1=value1&param2=value2...
```
