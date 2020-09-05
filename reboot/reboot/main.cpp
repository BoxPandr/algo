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




int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
