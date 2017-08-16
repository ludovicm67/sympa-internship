# Add a user

Juste make sure you have James running, then run:

`docker exec james java -jar /root/james-cli.jar -h 127.0.0.1 -p 9999 adduser user01@james.local 1234`

to add a user which has:

  - `user01@james.local` as email

  - `1234` as password
