set -e

echo "Waiting for service_name to be ready..."

until nc -z -v -w30 service_name 0000 #Port
do
  echo "Waiting for service_name connection..."
  sleep 15
done

echo "service_name is up - executing commands"
exec "$@"
