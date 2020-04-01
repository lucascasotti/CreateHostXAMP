Shell Script to create a host into XAMP for Windows and open with Sublime Text using https://github.com/git-for-windows/git.

For execute this script use sudo /path/createHost.sh hostName gitRepository

Pre-requisites "Sublime Text 3" into "/c/Program Files/Sublime Text 3/" and XAMP into directory "/c/xampp/"

This host is available to open in browser with address insered on hostName script parameter.

This script create a VirtualHost local and other for public URL redirect

Example:

If i execute sudo /path/createHost.sh mysite.des https://github.com/lucascasotti/CreateHostXAMP.git on terminal, on browser may write this http://mysite.des/ for open