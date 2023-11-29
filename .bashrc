# HTTP verb tampering with httpx 
# usages: echo 'https://example.com' | vtamper -d 'data=x' -x POST
function vtamper () {
  while read URL;do
    httpx -sc -silent -cl -method -title -x all -u $URL "$@";
  done
}
