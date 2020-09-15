# surveydemo-storeconf
Survey Demo - Cassandra cluster docker configuration

# Notes
* system_auth replicated for preventing 'UNABLE to obtain QUORUM' error
* survey_demo keyspace with one survey partition (by survey_id and date)

# Commands

* Start
```console
foo@bar:~$ sudo docker-compose up
```

* See cluster status
```console
foo@bar:~$ sudo watch -d -n 2 docker-compose exec node1 nodetool status
```

* Open CQLSH console
```console
foo@bar:~$ sudo docker-compose exec node1 cqlsh -u cassandra -p cassandra
```
