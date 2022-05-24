//
//  CalculatorViewModel.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/22.
//

import SwiftUI

struct CalculatorViewModel {
    
    private var defaultBtnArr: [[ButtonType]] {
        return [ [.allClear, .none, .none, .division],
                 [.seven, .eight, .nine, .multiply],
                 [.four, .five, .six, .minus],
                 [.one, .two, .three, .plus],
                 [.zero, .dot, .delete, .equals] ]
    }
    
    func getBtnArr() -> [[ButtonType]] {
        guard let btnArr = UserManager.btnArr else {
            debugPrint("저장된 배열이 없습니다.")
            UserManager.btnArr = defaultBtnArr
            return defaultBtnArr
        }
        debugPrint("저장된 배열 불러오기.")
        return btnArr
    }
    
}
