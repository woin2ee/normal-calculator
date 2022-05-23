//
//  UserManager.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/22.
//

import Foundation

struct UserManager {
    
    static var btnArr: [[ButtonType]]? {
        get {
            guard let encodedData = UserDefaults.standard.value(forKey: "customBtnArr") as? Data else { return nil }
            return try? PropertyListDecoder().decode([[ButtonType]].self, from: encodedData)
        }
        set {
            UserDefaults.standard.setValue(try? PropertyListEncoder().encode(newValue), forKey: "customBtnArr")
        }
    }
    
}
