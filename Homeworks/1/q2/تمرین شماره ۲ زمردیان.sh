pip install -U $(cat <(pip freeze --local | awk -F = '{print $1}'))
-----------------------------------------------------------------------------------------------------
pip3 list --format=json | jq -r '.[] | .name' | while read name; do pip3 install -U "$name"; done
