# ara-api
This is an integration of ara into docker (https://ara.readthedocs.io/en/latest/)

# usage
```
docker run \
  --detach \
  --name ara-api \
  -p 127.0.0.1:8000:8000 \
  --mount source=araapi_data,target=/root/.ara/server \
  ybovard/ara-api
```

# note
After the first execution, it might be necessary to execute ara-manage migrate:
```
$ docker exec -it ara-api /bin/sh
/ # ara-manage migrate
/usr/local/lib/python3.8/site-packages/tzlocal/unix.py:158: UserWarning: Can not find any timezone configuration, defaulting to UTC.
  warnings.warn('Can not find any timezone configuration, defaulting to UTC.')
Operations to perform:
  Apply all migrations: admin, api, auth, contenttypes, db, sessions
Running migrations:
  Applying api.0004_duration_in_database... OK
  Applying db.0001_initial... OK
[ara] Using settings file: /root/.ara/server/settings.yaml
/ #
```
