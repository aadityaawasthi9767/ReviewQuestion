#! /bin/bash -x


function isOdd()
{
	local rangeOdd=$1;
	local counter=0;
	for(( i=0 ; i<=$rangeOdd ; i++ ))
	do
		if [[ $i%2 -ne 0 ]]
		then
			arrOdd[((counter++))]=$i;
		fi
	done

  for j in "${arrOdd[@]}"
   do
      OddSum=$((OddSum + j ));
      OddLenght=${#arrOdd[@]}
      OddAverage=$((OddSum/OddLenght));
   done

	echo "List of all the ODD NUMBERS: " ${arrOdd[@]};
	echo "Sum of ODD NUMBERS: " $OddSum;
	echo "Average of ODD NUMBERS: " $OddAverage;

}


function isEven()
{
	local EvenSum=0;
	local rangeEven=$1
	local counter=0;
	for(( i=1 ; i<=$rangeEven ; i++ ))
	do
		if [[ $i%2 -eq 0 ]]
		then
			arrEven[((counter++))]=$i;
		fi
	done

	for j in "${arrEven[@]}"
	do
		EvenSum=$(( EvenSum + j ));
		EvenLenght=${#arrEven[@]}
		EvenAverage=$(( EvenSum/EvenLenght ));
	done

	echo "List of all the EVEN NUMBERS: " ${arrEven[@]};
	echo "Sum of EVEN NUMBERS: " $EvenSum;
	echo "Average of EVEN NUMBERS: " $EvenAverage;

}

function isPrime()
{
	increamentor=0;
	local num=0;
	local rangePrime=$1
	for(( i=1 ; i<=$rangePrime ; i++ ))
	do
		local counter=0;
		for(( num=i ; $num>=1 ; num-- ))
		do
			if [[ $i%$num -eq 0 ]]
			then
				((counter++))
			fi
		done
		if (($counter==2))
		then
			arrPrime[((increamentor++))]=$i;
		fi
	done

	
   for j in "${arrPrime[@]}"
   do
      PrimeSum=$((PrimeSum + j ));
      PrimeLenght=${#arrPrime[@]}
      PrimeAverage=$((PrimeSum/PrimeLenght));
   done

	echo "List of PRIME NUMBERS in the given range: " ${arrPrime[@]};
   echo "Sum of PRIME NUMBERS: " $PrimeSum;
   echo "Average of PRIME NUMBERS: " $PrimeAverage;

}


echo "Welcome to ODD,EVEN AND PRIME MUMBER question:";
read -p "Please enter the end limit of the range: " range;
result=$(isOdd $range);
result=$(isEven $range);
result=$(isPrime $range);
