//
//  main.cpp
//  reboot
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

#include <iostream>

#include <vector>

using namespace std;



class Solution {
public:
    int diagonalSum(vector<vector<int>>& mat) {
        int c = (int)mat.size();
        int result = 0;
        bool ood = (c % 2 == 1);
        int i = 0;
        while (i < c) {
            
            if (ood && i == c / 2){
                result += mat[i][i];
            }
            else{
                result += mat[i][i];
                result += mat[i][c-1-i];
            }
            i++;
        }
        
        return result;
    }
};

class Solution_O {
    const int P=1000000007;
    typedef long long ll;
    int a[100002];
public:
    int numWays(string s) {
        int n=(int)s.size(),i,x,y;
        for(i=0;i<n;i++){
            a[i+1]=a[i]+(s[i]=='1');
            
        }
        if(a[n]%3){
            return 0;
        }
        int k = 0;
        while (k < n + 3) {
            cout << a[k] << endl;
            k++;
        }
        if(!a[n]){
            return (ll)(n-1)*(n-2)/2%P;
        }
        for(i=x=y=0;i<n;i++)
        {
            if(a[i]==a[n]/3)x++;
            if(a[i]==a[n]/3*2)y++;
        }
        return (ll)x*y%P;
    }
};


int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    Solution sol;
    Solution_O solve;
    
    solve.numWays("10101");
    return 0;
}
