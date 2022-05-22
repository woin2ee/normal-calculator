//
//  UserManager.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/22.
//

import Foundation

class UserManager {
    
    static var btnArr: [Any]? {
        get { return UserDefaults.standard.array(forKey: "customBtnArr") }
        set { UserDefaults.standard.set(newValue, forKey: "customBtnArr") }
    }
}
