//
//  ButtonView.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/21.
//

import SwiftUI

struct ButtonView: View {
    
    let btnSize: CGFloat
    let btnText: String
    let fontSize: CGFloat
    let padding: CGFloat
    
    @Binding var result: String
    
    init(content: ButtonType, width: Double, result: Binding<String> = .constant("Nil")) {
        self.btnSize = CGFloat(width)
        self.btnText = content.text
        self.fontSize = CGFloat(content.fontSize)
        self.padding = CGFloat(content.padding)
        _result = result
    }
    
    var body: some View {
        Button(action: {
            self.result += self.btnText
        }, label: {
            Text(self.btnText)
                .font(.system(size: self.fontSize))
                .multilineTextAlignment(.center)
                .padding(.bottom, self.padding)
                .frame(width: self.btnSize, height: self.btnSize, alignment: .center)
        })
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(self.btnSize / 4)
    }
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(content: .multiply, width: 82.5)
    }
}
