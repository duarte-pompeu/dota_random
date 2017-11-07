#!/usr/bin/sh

# extract all heroes pics
# problem: some valve files dont use the official names
# some current problems: kotl
hero_list=$(cat dota2.html | grep -Eo "id=\"link_[^\"]*\"" \
 | cut -d \" -f 2 \
 | cut -d _ -f 2-100)

for hero in $(echo $hero_list); do
	pic_url="http://cdn.dota2.com/apps/dota2/images/heroes/"$hero"_full.png"
	wget $pic_url --output-document=$hero".png"
done




