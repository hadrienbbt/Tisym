//
//  ValueStore.swift
//  Tisym
//
//  Created by Hadrien Barbat on 2020-03-20.
//  Copyright © 2020 Hadrien Barbat. All rights reserved.
//

import Foundation

@objc class ValueStore: NSObject {
    
    func deleteUserConfig() {
        hueUser = nil
    }

    var hueUser: String? {
        get { return read("hueUser") as? String }
        set { write("hueUser", newValue) }
    }
    
    private func read(_ key: String) -> Any? {
        return UserDefaults.standard.value(forKey: key)
    }
    
    private func write(_ key: String, _ newValue: Any?) {
        UserDefaults.standard.set(newValue, forKey: key)
    }
    
}