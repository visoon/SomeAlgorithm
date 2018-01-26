//
//  Sort.h
//  SomeAlgorithm
//
//  Created by vison on 2018/1/26.
//  Copyright © 2018年 vison. All rights reserved.
//

#ifndef Sort_h
#define Sort_h

#include <stdio.h>
void print(int *a, int count);

void bubbleSort(int *nums, int count);
void selectionSort(int *nums, int count);
void insertSort(int *nums, int count);
void quickSort(int *nums, int low, int high);
#endif /* Sort_h */
