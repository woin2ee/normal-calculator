//
//  ResultView.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/22.
//

import SwiftUI

struct ResultView: View {
    
    @Binding var result: String
    
    init(result: Binding<String> = .constant("Nil")) {
        _result = result
    }
    
    var body: some View {
        Text(result)
            .font(.system(size: 50))
    }
    
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
