//
//  recursive.swift
//  algo
//
//  Created by Kristofer Sartorial on 2/16/25.
//

import Foundation

func factr(_ numb: Int) -> Int {
    if numb == 1 {
        return 1
    } else {
        return numb * factr(numb - 1)
    }
}
