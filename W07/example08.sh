#!/bin/bash
number_one()
{
	echo "this is the first function speaking..."
	number_two
}
number_two()
{
	echo "this is the second function speaking.."
	number_one
}
number_one
