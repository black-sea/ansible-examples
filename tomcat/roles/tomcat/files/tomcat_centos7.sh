[Unit]
Description=Tomcat
After=syslog.target network.target remote-fs.target nss-lookup.target

[Service]
Type=forking
Environment=JAVA_HOME=/usr/local/jdk1.8.0_151/
Environment=JRE_HOME=/usr/local/jdk1.8.0_151/
Environment=CATALINA_HOME=/usr/local/apache-tomcat
PIDFile=/usr/local/apache-tomcat/tomcat.pid
ExecStart=/usr/local/apache-tomcat/bin/startup.sh
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s QUIT $MAINPID
PrivateTmp=true
User=tomcat
[Install]
WantedBy=multi-user.target

