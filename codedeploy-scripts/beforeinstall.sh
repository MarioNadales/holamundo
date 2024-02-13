#!/bin/bash

    # Construir la aplicación con Gradle
    bash gradlew build

    # Cambiar el propietario y los permisos del archivo WAR
    sudo chown tomcat:tomcat /opt/tomcat/webapps/$(basename $war_file)
    sudo chmod 644 /opt/tomcat/webapps/$(basename $war_file)  