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
    
    init(content: ButtonContent, width: Double) {
        self.btnSize = CGFloat(width)
        self.btnText = content.text
        self.fontSize = CGFloat(content.fontSize)
        self.padding = CGFloat(content.padding)
    }
    
    var body: some View {
        Button(action: {
            // 버튼 액션
            print("버튼이 클릭되었습니다.")
            
            
        }, label: {
            Text(self.btnText)
                .font(.system(size: self.fontSize))
                .multilineTextAlignment(.center)
                .padding(.bottom, self.padding)
                .frame(width: self.btnSize, height: self.btnSize, alignment: .center)
                .cornerRadius(self.btnSize / 4)
        })
        .background(.black)
        .foregroundColor(.white)
        .frame(width: self.btnSize, height: self.btnSize, alignment: .center)
        .cornerRadius(self.btnSize / 4)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(content: .multiply, width: 82.5)
    }
}
