pip install -U $(cat <(pip freeze --local | awk -F = '{print $1}'))
