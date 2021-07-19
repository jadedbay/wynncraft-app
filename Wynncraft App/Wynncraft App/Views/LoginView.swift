//
//  LoginView.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

let userdefaults = UserDefaults()

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode
    
    init() {
        if userdefaults.string(forKey: "playerUUID") != nil {
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    var body: some View {
        
        ZStack {
            Image("loginBackground")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                    .frame(height: 40)
                Image("WynncraftLogo")
                    .resizable()
                    .scaledToFit()
                Spacer()
                    .frame(height: 30)
                ZStack {
                    VStack {
                        Spacer()
                            .frame(height: 150)
                        Button(action: {
                            
                        }, label: {
                            LoginButton()
                        })
                    }
                    LoginUsername()
                }
                Spacer()
                Text("Created By _jaded")
                    .font(.custom("TitilliumWeb-Light", size: 16))
                
            }
        }.ignoresSafeArea(.keyboard)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
