
url='https://guillermo-mlh-portfolio.duckdns.org/'
home=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "${url}")
login=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "${url}/login")
register=login=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "${url}/register")
register=login=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "${url}/health")
error=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "${url}/error/error")

if [[ "$home" -ne 200 ]] ; then
    echo "ERROR in endpoint" 
else
    echo "NO ERROR"
    exit 0
fi
