//
//  main.swift
//  calculator-v2
//
//  Created by Timothy Luong on 4/7/16.
//  Copyright © 2016 Timothy Luong. All rights reserved.
//

import Foundation

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
