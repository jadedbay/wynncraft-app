//
//  LoginUsername.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

struct LoginUsername: View {
    
    @State private var name: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    LoginArea()
                    TextField("Minecraft Username", text: $name)
                        .font(.custom("TitilliumWeb-Light", size: 18))
                        .frame(width: 190)
                }
                Spacer()
                    .frame(height: 0)
                HStack {
                    Image("rope_left")
                    
                    Spacer()
                        .frame(width: 120)
                    Image("rope_right")
                }
            }
        }
    }
}

struct LoginUsername_Previews: PreviewProvider {
    static var previews: some View {
        LoginUsername()
    }
}
