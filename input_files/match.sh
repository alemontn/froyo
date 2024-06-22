# /usr/bin/froyo src/match.fy -omatch.sh -nnoComments -ywerror -ynoticeFroyo -ycomments
#!/usr/bin/env bash
# Match a provided value
# tests the `if` & `switch` statements in Froyo

# module included @ /usr/lib/froyo/ext/literal.sh
literal()
{
obj="$@"
eval echo "$obj"
}
# module included @ /usr/lib/froyo/ext/ask.sh
ask()
{
prompt="$1"; shift
ret=$1; shift
echo -n "$prompt "
read $ret
}

# idk what to put here so yeah!
declare -r match_1="this is the first value that will be matched wow"
declare -r match_2="second value!!"
declare -r match_3="and the third one"

echo "available matches:" >&2
# 1 to 3
for i in {1..3}
do {
echo "*" "$i" "$(literal '$'match_$i)" >&2
} done

ask "your value:" input

case "$input" in
$(literal "$match_1"))
echo "matched 1 from switch"
;;
$(literal "$match_2"))
echo "matched 2 from switch"
;;
$(literal "$match_3"))
echo "matched 3 from switch"
;;
*)
echo "matched none from switch"
;;
esac

declare matched=false

for i in {1..3}
do {
if [[ "$(literal '$'match_$i)" == "$input" ]]
then {
echo "matched $i from if"
matched=true
} fi
} done

if [[ $matched == false ]]
then {
echo "matched none from if"
} fi
