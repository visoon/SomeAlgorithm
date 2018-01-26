//
//  main.m
//  SomeAlgorithm
//
//  Created by vison on 2018/1/26.
//  Copyright © 2018年 vison. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Sort.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*排序算法*/
        int a [] = {4, 3, 5, 1, 6, 2, 3};
        int len = sizeof(a) / sizeof(int);
        //冒泡排序
        bubbleSort(a, len);
        //选择排序
        selectionSort(a, len);
        //插入排序
        insertSort(a, len);
        //快速排序
        quickSort(a, 0, len - 1);
        print(a, len);
    }
    return 0;
}
