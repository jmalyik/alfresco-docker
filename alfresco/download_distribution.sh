# -nc means do not download if it is already downloaded
wget -nc https://artifacts.alfresco.com/nexus/content/repositories/releases/org/alfresco/alfresco-content-services-community-distribution/6.3.0-repo-4735-3-1/alfresco-content-services-community-distribution-6.3.0-repo-4735-3-1.zip

rm -Rf tomcat
mkdir -p tomcat/webapps
mkdir -p tomcat/lib
mkdir -p tomcat/conf/Catalina/localhost
# -j tells to unzip to ignore folders within the zip, do not create them during the extraction in  the target file system
unzip -j *.zip '*/webapps/*' -d tomcat/webapps
unzip -j *.zip '*.jar' -d tomcat/lib
unzip -j *.zip '*/localhost/*.xml' -d tomcat/conf/Catalina/localhost

