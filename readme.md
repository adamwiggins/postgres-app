Local:

    $ make
    ...
    $ foreman start
    00:33:54 postgres.1  | started with pid 19907
    00:33:54 postgres.1  | LOG:  database system was shut down at 2011-02-20 00:33:18 PST
    00:33:54 postgres.1  | LOG:  database system is ready to accept connections
    00:33:54 postgres.1  | LOG:  autovacuum launcher started

Deploy:

    $ heroku create --stack cedar
    ...
    $ git push heroku master
    ...
    $ heroku routes:create
    Creating route... done
    ip://184.73.173.252:10006
    $ heroku scale postgres 1
    Scaling 'postgres' processes... done, now running 1
    $ heroku routes:attach ip://184.73.173.252:10006 postgres.1
    Attaching route ip://184.73.173.252:10006 to postgres.1... done

