BEGIN {
	printf "Bill for the 4-March-2001.\n"
	printf "By Vivek G Gite.\n"
	printf "-------------------\n"
}
{
	total=$3 * $4
	recno=$1
	item=$2
	gtotal += total
	printf "%d %s Rs. %f\n",recno,item,total
}
END{
	printf"----------------------\n"
	printf"Total Rs. %f\n",gtotal
	printf"==============================\n"
}
