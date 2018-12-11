
echo '$1:'$1
echo '$2:'$2
echo '$3:'$3

if [ "x$3" == "x" ] || [ "$3" == "proxy" ]; then
	/i stop openremote_proxy_1
	/i rm openremote_proxy_1
fi

if [ "x$3" == "x" ] || [ "$3" == "manager" ]; then
	/i stop openremote_manager_1
	/i rm openremote_manager_1
fi

if [ "x$3" == "x" ] || [ "$3" == "kk" ]; then
	/i stop openremote_keycloak_1
	/i rm openremote_keycloak_1
fi

if [ "x$3" == "x" ] || [ "$3" == "pg" ]; then
	/i stop openremote_postgresql_1
	/i rm openremote_postgresql_1
fi