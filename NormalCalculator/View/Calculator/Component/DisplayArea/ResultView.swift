//
//  ResultView.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/22.
//

import SwiftUI

struct ResultView: View {
    
    @Binding var result: String
//    @State private var fontSize: CGFloat = 60
    
    init(result: Binding<String> = .constant("Nil")) {
        _result = result
    }
    
    var body: some View {
        Text(result)
            .font(.system(size: 50, design: .rounded))
//            .font(.custom("Georgia", size: 60))
            .lineLimit(3)
            .minimumScaleFactor(0.5)
            .padding(5)
    }
    
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
