#!/bin/bash

    cd /tmp/app
    
    # Construir la aplicación con Gradle
    bash gradlew build

    # gradle build

    war_file=$(ls /tmp/app/build/libs/holamundo-0.0.1-SNAPSHOT-plain.war)

    # Copiar el archivo WAR generado a la carpeta de despliegue de Tomcat
    sudo mv $war_file /opt/tomcat/webapps/

    # Cambiar el propietario y los permisos del archivo WAR
    sudo chown tomcat:tomcat /opt/tomcat/webapps/$(basename $war_file)
    sudo chmod 644 /opt/tomcat/webapps/$(basename $war_file)  