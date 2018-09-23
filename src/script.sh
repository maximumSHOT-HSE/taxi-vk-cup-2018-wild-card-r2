#!/bin/bash

mkdir -p bin
cp vk-cup-2018-wild-card-round-2/main.cpp bin/main.cpp

g++ -std=c++14 -Wall -Wshadow -pedantic -Wextra -DTEST -O3 bin/main.cpp -o bin/main > /dev/null 2> /dev/null

arr=$(ls tests)
arr=($arr)

sm=0

for x in "${arr[@]}"
do
	tmp=$(
		echo -n "$x : "
		./bin/main < "tests/$x"
	)
	x=$(echo "$tmp" | grep -Po "(?<=total score: )(.*)")
	let "sm = sm + $x"
	echo "$tmp"
done

echo "absolutely total score = $sm"
