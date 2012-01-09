#v+
#!/bin/bash
a=0
d=50
koment=""
while true; do
read -s -n 1 b
a=$(($a+1))
case "$b" in
".")
break
;;
"")
koment=$(echo "$koment ")
;;
*)
koment=$(echo "$koment$b")
;;
esac
if [ $a -eq $d ]; then
break
fi
clear
echo "zostao znakow: $((d-a)), kropka konczy komentarz"
echo "$koment"
done
clear
echo "wprowadzies: $koment"
#v-