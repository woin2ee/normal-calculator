//
//  ButtonView.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {
            print("버튼이 클릭되었습니다.")
        }, label: {
            Text("+")
                .font(.system(size: 30))
        })
        .frame(width: 60, height: 60, alignment: .center)
        .background(.orange)
        .cornerRadius(15)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
