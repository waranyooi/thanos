// waranyoo 23-02-2023//
// C++ program to print all words that have 
// the same unique character set 
#include<bits/stdc++.h> 
using namespace std; 
#define MAX_CHAR 26 

// Generates a key from given string. The key 
// contains all unique characters of given string in 
// sorted order consisting of only distinct elements. 
string getKey(string &str) 
{ 
	bool visited[MAX_CHAR] = { false }; 

	// store all unique characters of current 
	// word in key 
	for (int j = 0; j < str.length(); j++) 
		visited[str[j] - 'A'] = true ; 
	string key = ""; 
	for (int j=0; j < MAX_CHAR; j++) 
		if (visited[j]) 
			key = key + (char)('A'+j); 
	return key; 
} 

// Print all words together with same character sets. 
void wordsWithSameCharSet(string words[], int n) 
{ 
	// Stores indexes of all words that have same 
	// set of unique characters. 
	unordered_map <string, vector <int> > Hash; 

	// Traverse all words 
	for (int i=0; i<n; i++) 
	{ 
		string key = getKey(words[i]); 
		Hash[key].push_back(i); 
	} 

	// print all words that have the same unique character set 
	for (auto it = Hash.begin(); it!=Hash.end(); it++) 
	{ 
	for (auto v=(*it).second.begin(); v!=(*it).second.end(); v++) 
		cout << words[*v] << ", "; 
	cout << endl; 
	} 
} 

// Driver program to test above function 
int main() 
{ 
	string words[] = {"VMRCO","VORCM","MCRTOX","ZXTAC","XZATC","XMTCOR","OXVS","AZTXC","VXOS","RZAT","MRCOTX","SVXO","TRAZ","ZTAR","MVOCR"};
	int n = sizeof(words)/sizeof(words[0]); 
	wordsWithSameCharSet(words, n); 
	return 0; 
} 
