//
//  ButtonContent.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/22.
//

import Foundation

enum ButtonContent: Codable {
    case zero, one, two, three, four, five, six, seven, eight, nine

    case none
    case dot
    case delete
    case allClear
    
    case plus
    case minus
    case multiply
    case division
    case equals
    
    var text: String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
            
        case .none:
            return ""
        case .dot:
            return "."
        case .delete:
            return "<"
        case .allClear:
            return "AC"
            
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiply:
            return "*"
        case .division:
            return "/"
        case .equals:
            return "="
        }
    }
    
    var fontSize: Float {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            return 60
            
        case .none:
            return 0
        case .dot:
            return 60
        case .delete:
            return 60
        case .allClear:
            return 60
            
        case .plus:
            return 80
        case .minus:
            return 80
        case .multiply:
            return 80
        case .division:
            return 60
        case .equals:
            return 80
        }
    }
    
    var padding: Float {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            return 0
            
        case .none:
            return 0
        case .dot:
            return 0
        case .delete:
            return 0
        case .allClear:
            return 0
            
        case .plus:
            return 10
        case .minus:
            return 10
        case .multiply:
            return -30
        case .division:
            return 10
        case .equals:
            return 10
        }
    }
    
}
