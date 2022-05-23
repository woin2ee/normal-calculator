//
//  MainViewModel.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/22.
//

import Foundation

struct MainViewModel {
    
    private var defaultBtnArr: [[ButtonContent]] {
        return [ [.allClear, .none, .none, .division],
                 [.seven, .eight, .nine, .multiply],
                 [.four, .five, .six, .minus],
                 [.one, .two, .three, .plus],
                 [.zero, .dot, .delete, .equals] ]
    }
    
    func getBtnArr() -> [[ButtonContent]] {
        guard let btnArr = UserManager.btnArr else {
            print("저장된 배열이 없습니다.")
            UserManager.btnArr = defaultBtnArr
            return defaultBtnArr
        }
        print("저장된 배열 불러오기.")
        return btnArr
    }
    
}
