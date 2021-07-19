//
//  ControlView.swift
//  Wynncraft App
//
//  Created by JJ B on 20/7/21.
//

import SwiftUI

struct ControlView: View {
    
    var body: some View {
        if userdefaults.string(forKey: "playerUUID") == nil {
            LoginView()
        } else {
            ContentView()
        }
    }
}
