host="fabmedical-bs.mongo.cosmos.azure.com"
username="fabmedical-bs"
password="lnx2DB7Psedr2pEzOw5Gjez5R08c31ZDcvKgfL9fdOu4phYrlPQT9B4xduhVGZD9zv9yfxiukVVvf6KUcyyQgQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
