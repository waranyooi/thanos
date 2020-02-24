//waranyoo 23-02-2020//
#include <bits/stdc++.h> 
using namespace std; 
#define ll long long int 
  
// Recursive function to return 
// the sum of the given series 
ll sum(int n) 
{ 
  
    // 1^1 = 1 
    if (n == 1) 
        return 1; 
    else
  
        // Recursive call 
        return ((ll)pow(n, n) + sum(n - 1)); 
} 
  
// Driver code 
int main() 
{ 
    int n = 3; 
    cout << sum(n); 
  
    return 0; 
} 