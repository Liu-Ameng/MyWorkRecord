// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a=1;
a+=1;

let anIntNum:Int = 32

class TaxCalculator {
    var income: Double
    var incomeFactor: Double
    var tax: Double = 0;
    
    init(income:Double, factor: Double) {
        self.income = income
        self.incomeFactor = factor
        self.tax = income * factor * 0.3;
    }
}

let taxCalc = TaxCalculator(income: 5000000, factor: 0.6)
taxCalc.tax

func search(num:Int) -> Int {
    let arr=[1,2,3,4,5,6,7,8,9]
    var low = 0
    var high = arr.count
    var mid = 0;
    while(low<high) {
        mid = (low+high)>>1
        if(arr[mid]==num){
            return mid
        }
        if(arr[mid]<num){
            low = mid + 1
        }else{
            high = mid - 1
        }
    }
    return low
}

var x

search(3)
