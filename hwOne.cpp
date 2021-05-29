#include <cstdlib>
#include <iostream>
#include <cmath>
/*
	Returns 1 if the two integers form an amicable pair, 0 otherwise.
	This code needs to function correctly regardless of the ordering.
	For example, check_amicable(220, 284) should return 1, as should
	check_amicable(284, 220).
	This function must work correctly for all integers up to 2 billion.
	Be sure that the function prototype remains intact.
*/
int check_amicable(int a, int b) {
	// YOUR CODE GOES HERE
    int accumulatorA = 0;
    int accumulatorB = 0;
    for(int i = 1; i< a; i++){
        if(a % i == 0){
            accumulatorA += i;
        }
    }
    for(int i = 1; i< b; i++){
        if(b % i == 0){
            accumulatorB += i;
        }
    }
    if(accumulatorA != b){
        return 0;
    }
    if(accumulatorB != a){
        return 0;
    }
    return 1;
}


/*
	Short program to determine whether two numbers form an amicable pair.
	Do not change the code below (except for the values of num_a and num_b)
*/
int main() {
	const int num_a = 1982313333;
	const int num_b = 1892277387;

	// std::cout<<check_amicable(num_a, num_b)<<std::endl;
	return check_amicable(num_a, num_b);
}