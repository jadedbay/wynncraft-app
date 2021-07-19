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
    
    @ObservedObject var webservice = Webservice()
    
    @State private var name: String = ""
    
    @State var loggedIn = false
    
    var body: some View {
        
        ZStack {
            if loggedIn {
                ContentView()
            } else {
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
                                    webservice.getUUID(username: name) { (items) in
                                        if items.code == 200 {
                                            userdefaults.set(items.data[0].uuid, forKey: "playerUUID")
                                            self.loggedIn = true
                                        } else {
                                            print("invalid user")
                                        }
                                        
                                    }
                                }, label: {
                                    LoginButton()
                                })
                            }
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
                        Spacer()
                        Text("Created By _jaded")
                            .font(.custom("TitilliumWeb-Light", size: 16))
                        
                    }
                }.ignoresSafeArea(.keyboard)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
