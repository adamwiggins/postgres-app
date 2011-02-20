PG_PATH=$(PWD)/pg
DATA_PATH=$(PWD)/pgdata
FLEX_PATH=$(PWD)/flex

pg: flex
	cd postgresql-9.0.3 && FLEX=$(FLEX_PATH)/bin/flex ./configure --prefix=$(PG_PATH)
	cd postgresql-9.0.3 && make install
	$(PG_PATH)/bin/initdb $(DATA_PATH) -U postgres
	echo 'host all all 0.0.0.0/0 md5' >> $(DATA_PATH)/pg_hba.conf

flex:
	cd flex-2.5.35 && ./configure --prefix=$(FLEX_PATH) && make install

