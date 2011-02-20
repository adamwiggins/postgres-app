PG_PATH=/tmp/pg
DATA_PATH=/tmp/pgdata

pg:
	./configure --prefix=$(PG_PATH)
	make install
	/tmp/pg/bin/initdb $(DATA_PATH) -U postgres
	echo 'host all all 0.0.0.0/0 md5' >> $(DATA_PATH)/pg_hba.conf
