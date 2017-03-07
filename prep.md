# Prereqs & Preparation

## Download a MySQL server

1. Download the MySQL Community Server (free)
   - directly from [here](https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.17-macos10.12-x86_64.dmg)
   - alternatively, go to [dev.mysql.com/downloads/mysql](https://dev.mysql.com/downloads/mysql/), scroll down and select the `DMG Archive`, and on the new page, scroll down to click on `No thanks, just start my download`.
1. Unzip and run the installation program
1. You'll be prompted with a *temporary password*, which you should copy/paste to a notepad or stickie on your machine. Please note that if you lose this password, you'll need to consult the section [How to Reset the Root Password](https://dev.mysql.com/doc/refman/5.7/en/resetting-permissions.html) in the MySQL reference manual. This can be a pain.
1. Start your local SQL server. Go to |System Preferences..., select SQL Server, and in dialog window, click Start MySQL Server.
1. Open your terminal, and type
  ```bash
  $ /usr/local/mysql/bin/mysql -u root -p
  Enter password:
  ```
1. Enter the temporary password you were just given.
1. A `mysql>` prompt starts, and enter your first command to remove the password altogether:
  ```bash
  mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '' PASSWORD EXPIRE NEVER;
  Query OK, 0 rows affected (0.00 sec)
  ```

Your local server is all set!


## Download a MySQL client

1. Download Sequel Pro (free)
   - directly from [here](https://github.com/sequelpro/sequelpro/releases/download/release-1.1.2/sequel-pro-1.1.2.dmg)
   - alternatively, from [sequelpro.com/download](https://sequelpro.com/download)
1. Unpack the dmg file and copy the SequelPro application to your Applications folder
1. Open SequelPro, and fill in the following connection settings:
   - host: `localhost` (hit enter if they ask for 127.0.0.1)
   - username: `root`
   - password: _leave this blank_

