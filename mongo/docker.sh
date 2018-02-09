docker run --name mongo -p 27017:27017 -d mongo:latest

#docker run --name mongo -v /my/own/datadir:/data/db -d mongo:latest

docker exec -it mongo mongo admin

db.createUser({ user: 'sa', pwd: '1111', roles: [ { role: "userAdminAnyDatabase", db: "admin" } ] });