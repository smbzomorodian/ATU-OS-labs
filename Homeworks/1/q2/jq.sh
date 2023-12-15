pip install -U $(cat <(pip list --outdate --format=json | jq -r '.[].name'))
