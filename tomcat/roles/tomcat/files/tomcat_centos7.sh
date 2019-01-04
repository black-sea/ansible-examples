[Unit]
Description=Tomcat
After=syslog.target network.target remote-fs.target nss-lookup.target

[Service]
Type=forking
Evironment="JAVA_HOME=/usr/local/jdk1.8.0_115"
PIDFile=/usr/local/apache-tomcat/tomcat.pid
ExecStart=/usr/local/apache-tomcat/bin/startup.sh
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s QUIT $MAINPID
PrivateTmp=true
User=tomcat
[Install]
WantedBy=multi-user.target

