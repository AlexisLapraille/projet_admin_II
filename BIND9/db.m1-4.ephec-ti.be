$ORIGIN m1-4.ephec-ti.be.     ;designates the start of this zone file in the namespace
$TTL 86400                   ; default time to live

@ IN SOA m1-4.ephec-ti.be. admin.m1-4.ephec-ti.be. (
        2021032801  ; serial number
        21600       ; Refresh
        3600        ; Retry
        1209600     ; Expire
        86400       ; Min TTL
        )

@       IN      NS      ns.m1-4.ephec-ti.be.
@       IN      MX      10 mail.m1-4.ephec-ti.be.
@	    IN      A       192.168.30.2
@	    IN      A       135.125.101.243


ns      IN     A        135.125.101.243
www     IN     A        192.168.30.3
www     IN     A        135.125.101.243
b2b     IN     CNAME    www
mail   IN     A         192.168.30.5
mail   IN     A         135.125.101.243