//
//  CalculatorView.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/21.
//

import SwiftUI

struct CalculatorView: View {
    
    var numOfBtnPerLine = 4
    var buttonSpacing: CGFloat {
        return 10
    }
    var buttonSize: CGFloat {
        (UIScreen.main.bounds.width - 5 * self.buttonSpacing) / CGFloat(self.numOfBtnPerLine)
    }
    
    let viewModel = MainViewModel()
    
    var btnTypeArr: [[ButtonType]] {
        self.viewModel.getBtnArr()
    }
    
    @State private var result: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            ResultView(result: $result)
            
            VStack(alignment: .leading, spacing: self.buttonSpacing) {
                ForEach(self.btnTypeArr, id: \.self) { types in
                    hStackOfButtons(by: types)
                }
            }
        }
    }
    
    private func hStackOfButtons(by types: [ButtonType]) -> some View {
        HStack(spacing: self.buttonSpacing) {
            ForEach(types, id: \.self) { type in
                ButtonView(btnType: type, btnsize: self.buttonSize, result: self.$result)
            }
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
