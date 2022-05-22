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
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("test")
                .font(.system(size: 50))
            
            
            VStack(alignment: .leading, spacing: buttonSpacing) {
                ForEach(self.viewModel.getBtnArr(), id: \.self) { contents in
                    HStack(spacing: buttonSpacing) {
                        ForEach(contents, id: \.self) { content in
                            ButtonView(content: content, width: self.buttonSize)
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
