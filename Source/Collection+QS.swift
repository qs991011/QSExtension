//
//  Collection+QS.swift
//  QSExtension
//
//  Created by 胜的钱 on 2019/6/12.
//  Copyright © 2019 胜的钱. All rights reserved.
//

import Foundation


extension Collection {
    
    
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

extension Array where Element: Equatable {
    mutating func remove(_ object: Element) {
        if let index = firstIndex(of: object) {
            remove(at: index)
        }
    }
}

extension Array {
    func unique<T: Hashable>(map: ((Element)->(T))) ->[Element] {
        var set : Set<T> = []
        var arrayOrdered : [Element] = []
        for value in self {
            if !set.contains(map(value)) {
                set.insert(map(value))
                arrayOrdered.append(value)
            }
        }
        return arrayOrdered
    }
}
