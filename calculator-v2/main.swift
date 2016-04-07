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