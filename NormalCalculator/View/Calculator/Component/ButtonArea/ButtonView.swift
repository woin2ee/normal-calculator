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
    
    @Binding var result: String
    
    init(btnType: ButtonType, btnsize: CGFloat, result: Binding<String> = .constant("Nil")) {
        self.btnType = btnType
        self.btnSize = btnsize
        _result = result
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
            result += ""
        case .delete:
            if result.isEmpty { return }
            result.removeLast()
        case .allClear:
            result.removeAll()
            
        case .plus, .minus, .multiply, .division:
            if result.last?.isOperator() ?? false {
                _ = result.popLast()
            }
            result += btnType.text

        case .equals:
            self.result += self.btnType.text
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
        ButtonView(btnType: .multiply, btnsize: 82.5)
    }
}
