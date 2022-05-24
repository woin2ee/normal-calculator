//
//  ButtonViewModel.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/24.
//

import SwiftUI

struct ButtonViewModel {
    
    @Binding private var result: String
    
    init(result: Binding<String>) {
        _result = result
    }
    
    func calculateResult() {
        print("cal")
    }
    
}
