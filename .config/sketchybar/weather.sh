#!/bin/zsh

city="$(curl -s ipinfo.io/city)"
city="${city// /%20}"
url="wttr.in/${city}?format=%C+|+%t"
raw="$(curl -s $url)"
condition=$(echo $raw | awk -F '|' '{print $1}' | tr '[:upper:]' '[:lower:]')
condition="${condition// /}"
temp=$(echo $raw | awk -F '|' '{print $2}')
temp="${temp//\+/}"
temp="${temp// /}"

# add more conditions here as appropriate
case "${condition}" in
  "sunny")
    icon=""
    ;;
  "partlycloudy")
    icon=""
    ;;
  *)
    icon="$condition"
    ;;
esac

sketchybar -m --set weather icon="$icon" \
              --set weather label="$temp"