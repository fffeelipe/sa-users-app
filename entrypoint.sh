apt install mysql-client
while ! mysqladmin status -h$MYSQL_HOST -P3306 -u$MYSQL_USER  --password=$MYSQL_PASSWORD
do
  echo "mysqladmin status -h$MYSQL_HOST -P3306 -u$MYSQL_USER  --password=$MYSQL_PASSWORD"
  echo "$(date) - waiting for database to start"
  sleep 10
done

# Create, migrate, and seed database if it doesn't exist.

rm -f tmp/pids/server.pid
rails db:create
rails db:migrate
rails s -p 3000 -b '0.0.0.0'
