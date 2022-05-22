//
//  MainView.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/21.
//

import SwiftUI

struct MainView: View {
    
    var buttonSpacing: CGFloat = 10
    var buttonSize: CGFloat {
        (UIScreen.main.bounds.width - 5 * buttonSpacing) / 4
    }
    
    let viewModel = MainViewModel()
    
    var btnArr: [[ButtonContent]] {
        self.viewModel.getBtnArr()
    }
    
    @State private var result: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            ResultView(result: $result)
            
            VStack(alignment: .leading, spacing: buttonSpacing) {
                ForEach(self.btnArr, id: \.self) { contents in
                    HStack(spacing: buttonSpacing) {
                        ForEach(contents, id: \.self) { content in
                            ButtonView(content: content, width: self.buttonSize, result: $result)
                        }
                    }
                }
            }
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
