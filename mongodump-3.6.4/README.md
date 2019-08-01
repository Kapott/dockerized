# mongodump 3.6.4

Using this requires you to bindmount to your filesystem for output. I included
a shellscript which auto-creates a random directory to dump to in the `$PWD` and
attaches the mount to the container. This effectively means you only have to
specify the host (and optionally the database) you wish to dump, and it will
start dumping.

Useage:

```
./mongodump-3.6.sh -h my.database.mysite.com -d databasename
```

This will pull kapott/mongodump:3.6, create a random dir in the PWD and download
your database into the randomly named dir.

Please note that the rights to the dump will likely be root:root. You're a
smart cookie, and will figure out why ;)



