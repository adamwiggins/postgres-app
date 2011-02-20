Local:

    $ make
    ...
    $ foreman start
    00:33:54 postgres.1  | started with pid 19907
    00:33:54 postgres.1  | LOG:  database system was shut down at 2011-02-20 00:33:18 PST
    00:33:54 postgres.1  | LOG:  database system is ready to accept connections
    00:33:54 postgres.1  | LOG:  autovacuum launcher started

Deploy:

    heroku create --stack cedar
    git push heroku master

