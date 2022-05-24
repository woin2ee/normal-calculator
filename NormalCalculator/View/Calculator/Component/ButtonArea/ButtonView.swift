//
//  ButtonView.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/21.
//

import SwiftUI

struct ButtonView: View {
    
    let btnType: ButtonType
    let btnSize: CGFloat
    
    @Binding private var result: String
    
    static var isEnteredDot: Bool = false
//    @State static var isEnteredOperator: Bool = false
    
    let viewModel: ButtonViewModel
    
    init(btnType: ButtonType, btnSize: CGFloat, result: Binding<String> = .constant("Nil")) {
        self.btnType = btnType
        self.btnSize = btnSize
        _result = result
        viewModel = ButtonViewModel(result: result)
    }
    
    var body: some View {
        Button(action: {
            touchedButton()
        }, label: {
            Text(self.btnType.text)
                .font(.system(size: btnType.fontSize))
                .multilineTextAlignment(.center)
                .padding(.bottom, btnType.heightOffset)
                .frame(width: btnSize, height: btnSize, alignment: .center)
        })
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(btnSize / 4)
    }
    
    func touchedButton() {
        switch self.btnType {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .none:
            result += btnType.text
            
        case .dot:
            if ButtonView.isEnteredDot { return }
            ButtonView.isEnteredDot = true
            result += btnType.text
        case .delete:
            if result.isEmpty { return }
            if let last = result.popLast(), String(last) == ButtonType.dot.text {
                ButtonView.isEnteredDot = false
            }
        case .allClear:
            result.removeAll()
            
        case .plus, .minus, .multiply, .division:
            if result.last?.isOperator() ?? false {
                result.removeLast()
            }
            result += btnType.text
            
        case .equals:
            viewModel.calculateResult()
        }
    }
    
}

extension Character {
    func isOperator() -> Bool {
        var isOperator = false
        let btns: [ButtonType] = [.plus, .minus, .multiply, .division]
        btns.forEach {
            if String(self) == $0.text {
                isOperator = true
            }
        }
        return isOperator
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(btnType: .multiply, btnSize: 82.5)
    }
}
