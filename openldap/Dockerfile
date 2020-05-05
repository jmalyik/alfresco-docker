FROM  osixia/openldap:1.3.0

ENV LDAP_LOG_LEVEL "256"
ENV LDAP_ORGANISATION "Dummy"
ENV LDAP_DOMAIN "dummy.com"
ENV LDAP_ADMIN_PASSWORD "my-favourite-password"

# one can extend the schema in this way
# ADD my.schema /container/service/slapd/assets/config/bootstrap/schema/my.schema

# then add the entries (users and groups)
# ADD bootstrap.ldif /container/service/slapd/assets/config/bootstrap/ldif/custom/50-bootstrap.ldif

#cn=admin,dc=dummy,dc=com Pass:my-favourite-password
