#!/bin/bash
banco()
{
for((i=1;i<=9;i++))
do
	for((j=1;j<=9;j++))
	do
		a=`expr $i + $j`
		b=`expr $a % 2`
		if [ $b -eq 1 ]
		then
			echo -e -n "\033[40m  "			
		else
			echo -e -n "\033[47m  "	
		fi
	done
	echo -e "\033[0m "
done
}
#banco

bacthang()
{
#!/bin/bash
for((i=1;i<=9;i++))
do
	for((j=1;j<=9;j++))
	do
		a=`expr $i + $j`
		b=`expr $a % 4`
		if [ $b -eq 0 ]
		then
			echo -e -n "\033[40m    "			
		else
			echo -e -n "\033[47m    "	
		fi
	done
	echo -e "\033[0m "
done
}
bacthang
