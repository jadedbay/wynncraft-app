//
//  LoginButton.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        ZStack {
            LoginArea()
            Text("Login")
                .font(.custom("TitilliumWeb-Light", size: 24))
                .foregroundColor(.white)
        }
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
