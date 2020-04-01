#/bin/bash

/c/xampp/ctlscript.bat STOP

echo $'127.0.0.1\t\t'$1$'.des\n' >> /c/Windows/System32/drivers/etc/hosts

mkdir -p /c/sites/$1

echo $'\n' >> /c/xampp/apache/conf/extra/httpd-vhosts.conf

echo "<VirtualHost *:80>
    DocumentRoot \"C:/sites/$1\"
    ServerName $1.des
    ErrorLog \"logs/$1.des-error.log\"
    CustomLog \"logs/$1.des.log\" common
</VirtualHost>" >> /c/xampp/apache/conf/extra/httpd-vhosts.conf

echo $'\n' >> /c/xampp/apache/conf/extra/httpd-vhosts.conf

echo "<VirtualHost *:80>
    DocumentRoot \"C:/sites/$1\"
    ServerName $1-dev.evolvest.com.br
    ErrorLog \"logs/$1-ev.evolvest.com.br-error.log\"
    CustomLog \"logs/$1-ev.evolvest.com.br.log\" common
</VirtualHost>" >> /c/xampp/apache/conf/extra/httpd-vhosts.conf


sleep 5s

/c/xampp/ctlscript.bat START

if [ ! -z $2 ]
then
        git clone $2  /c/sites/$1
fi

'/c/Program Files/Sublime Text 3/sublime_text.exe' /c/sites/$1