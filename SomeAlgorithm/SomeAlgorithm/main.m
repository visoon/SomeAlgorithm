//
//  main.m
//  SomeAlgorithm
//
//  Created by vison on 2018/1/26.
//  Copyright © 2018年 vison. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap(int *nums, int i, int j) {
    nums[i] = nums[i] + nums[j];
    nums[j] = nums[i] - nums[j];
    nums[i] = nums[i] - nums[j];
}

void print(int *a, int count) {
    for (int i = 0; i < count; i ++) {
        printf("%d, ", a[i]);
        if (i == count - 1) {
            printf("\n");
        }
    }
}

// 冒泡排序
void bubbleSort(int *nums, int count) {
    for (int i = 0; i < count - 1; i ++) {
        for (int j = 0; j < count - i - 1; j ++) {
            if (nums[j] > nums[j+1]) {
                swap(nums, j, j+1);
            }
        }
    }
}

//选择排序
void selectionSort(int *nums, int count) {
    int min = 0;
    int minValue;
    for (int i = 0; i < count - 1; i ++) {
        minValue = nums[i];
        for (int j = i; j < count - 1; j ++) {
            if (minValue > nums[j+1]) {
                minValue = nums[j+1];
                min = j + 1;//找到最小值的下标
            }
        }
        if (min != 0) {
            swap(nums, i, min);
        }
    }
}

//插入排序
void insertSort(int *nums, int count) {
    for (int i = 1; i < count; i ++) {
        for (int j = i - 1; j < i && j >= 0; j --) {
            if (nums[j] > nums[j + 1]) {
                swap(nums, j, j + 1);
            }
        }
    }
}

//快速排序
void quickSort(int *nums, int low, int high) {
    if (low >= high) {
        return;
    }
    int p = nums[low];
    int start = low;
    int end = high;
    while (start < end) {
        
        while (start < end && nums[end] > p) {
            end --;
        }
        if (start < end) {
            nums[start] = nums[end];
            start ++;
        }
        
        while (start < end && nums[start] < p) {
            start ++;
        }
        if (start < end) {
            nums[end] = nums[start];
            end --;
        }
    }
    nums[start] = p;
    quickSort(nums, 0, start - 1);
    quickSort(nums, start + 1, high);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a [] = {4, 3, 5, 1, 6, 2, 3};
        int len = sizeof(a) / sizeof(int);
        
        //        bubbleSort(a, len);
        //        selectionSort(a, len);
        //        insertSort(a, len);
        quickSort(a, 0, len - 1);
        
        print(a, len);
    }
    return 0;
}
