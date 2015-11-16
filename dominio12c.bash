docker run -d --name=db -p 1521:1521 -p 8080:8080 alexeiled/docker-oracle-xe-11g
mkdir -p ~/weblogic12c && chmod 777 ~/weblogic12c && docker run -i -v ~/weblogic12c:/opt/oracle/wlsdomains -e USER=$USER --link db sciensa2/soasuite12c-domain && sudo chown -R $USER:$USER ~/weblogic12c
