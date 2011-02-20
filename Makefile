PG_PATH=/tmp/pg
DATA_PATH=/tmp/pgdata

pg:
	cd postgresql-9.0.3 && ./configure --prefix=$(PG_PATH)
	cd postgresql-9.0.3 && make install
	$(PG_PATH)/bin/initdb $(DATA_PATH) -U postgres
	echo 'host all all 0.0.0.0/0 md5' >> $(DATA_PATH)/pg_hba.conf
