//
//  ProductStatus.swift
//  SwiftPractice
//
//  Created by EPCNSZXW0311 on 4/12/16.
//  Copyright © 2016 EPCNSZXW0311. All rights reserved.
//

import Foundation

enum ProductStatus : Int {
    case ToBuy = 0
    case InProgress = 1
    
    func toString() -> String {
        switch self {
            case .ToBuy:
                return "To Buy"
            case .InProgress:
                return "In Progress"
        }
    }
}