//
//  main.swift
//  calculator-v2
//
//  Created by Timothy Luong on 4/7/16.
//  Copyright © 2016 Timothy Luong. All rights reserved.
//

import Foundation

// Build a Calculator

func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}

func subtract(n1: Int, n2: Int) -> Int {
    return n1 - n2
}

func multiply(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

func divide(n1: Int, n2: Int) -> Int {
    return n1 / n2
}

func mathOp(n1: Int, n2: Int, op: (Int, Int) -> Int) -> Int {
    return op(n1, n2)
}

// Array Fun

func addArr(nums: [Int]) -> Int {
    var sum = 0
    for n in nums {
        sum += n
    }
    return sum
}

func multArr(nums: [Int]) -> Int {
    var product = 1
    for n in nums {
        product *= n
    }
    return product
}

func count(nums: [Int]) -> Int {
    return nums.count
}

func avg(nums: [Int]) -> Int {
    return addArr(nums) / count(nums)
}

func mathArrOp(nums: [Int], op: ([Int]) -> Int) -> Int {
    return op(nums)
}

// Points

func addTuples(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtractTuples(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

// Integer versions for dictionary
func addPoints(p1: [String: Int], p2: [String: Int]) -> (Int, Int) {
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        print("Invalid Parameters. Missing a coordinate value.")
        exit(1)
    }
    return (p1["x"]! + p2["x"]!, p1["y"]! + p2["y"]!)
}

func subtractPoints(p1: [String: Int], p2: [String: Int]) -> (Int, Int) {
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        print("Invalid Parameters. Missing a coordinate value.")
        exit(1)
    }
    return (p1["x"]! - p2["x"]!, p1["y"]! - p2["y"]!)
}

// Double versions for dictionary
func addPoints(p1: [String: Double], p2: [String: Double]) -> (Double, Double) {
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        print("Invalid Parameters. Missing a coordinate value.")
        exit(1)
    }
    return (p1["x"]! + p2["x"]!, p1["y"]! + p2["y"]!)
}

func subtractPoints(p1: [String: Double], p2: [String: Double]) -> (Double, Double) {
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        print("Invalid Parameters. Missing a coordinate value.")
        exit(1)
    }
    return (p1["x"]! - p2["x"]!, p1["y"]! - p2["y"]!)
}

// Moderate Unit Testing (although I suppose I'm not covering alot of cases)

// Calculator
print("Basic Calc Tests")
print(add(132, n2: 243))
print(subtract(132, n2: 243))
print(multiply(78, n2: 13))
print(divide(78, n2: 13))
print(mathOp(132, n2: 243, op: add))
print(mathOp(132, n2: 243, op: subtract))
print(mathOp(78, n2: 13, op: multiply))
print(mathOp(78, n2: 13, op: divide))

// Array fun
let testArr = [1, 3, 5, 7, 9]
print("Basic Array Tests")
print(addArr(testArr))
print(multArr(testArr))
print(count(testArr))
print(avg(testArr))
print(mathArrOp(testArr, op: addArr))
print(mathArrOp(testArr, op: multArr))
print(mathArrOp(testArr, op: count))
print(mathArrOp(testArr, op: avg))

// Points
let t1 = (1, 2)
let t2 = (3, 4)
print("Tuples")
print(addTuples(t1, p2: t2))
print(subtractTuples(t1, p2:t2))
print("Points")
let point1 = ["x" : 1, "y": 2]
let point2 = ["x" : 3, "y": 4]
let point3 = ["x" : 1.0, "y": 2.0]
let point4 = ["x" : 3.0, "y": 4.0]
print(addPoints(point1, p2: point2))
print(addPoints(point3, p2: point4))
print(subtractPoints(point1, p2: point2))
print(subtractPoints(point3, p2: point4))