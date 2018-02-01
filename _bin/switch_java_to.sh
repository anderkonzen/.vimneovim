#!/bin/bash

case "$1" in
  "7")
    jenv global 1.7
    ;;
  "8")
    jenv global 1.8
    ;;
  "9")
    jenv global 9.0
    ;;
  *)
    echo "Unknown JDK version! Specify 7, 8 or 9!"
    ;;
esac

jenv rehash
javahome=$(jenv javahome)
export JAVA_HOME=$javahome
sed -i -e "s|\(JAVA_HOME=\)\(.*\)|\1$javahome|g" ~/.mavenrc

java -version
