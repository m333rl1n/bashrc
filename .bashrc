# HTTP verb tampering with httpx 
# usages: echo 'https://example.com' | vtamper -d 'data=x' -x POST
function vtamper () {
  while read URL;do
    httpx -sc -silent -cl -method -title -x all -u $URL "$@";
  done
}

# aliases
alias l="ls -ltrha"

# ENV
export USER_AGENT="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"
export EDITOR="vim"
