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
    @State private var nameError: Double = 0.0
    @State private var isLoading = false
    
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
                                    if name != "" {
                                        isLoading = true
                                    }
                                    webservice.getUUID(username: name) { (items) in
                                        if items.code == 200 {
                                            userdefaults.set(items.data[0].uuid, forKey: "playerUUID")
                                            isLoading = false
                                            self.loggedIn = true
                                        } else {
                                            isLoading = false
                                            nameError = 1.0
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
                                        
                                        if isLoading {
                                            HStack {
                                                Spacer()
                                                    .frame(width: 160)
                                                ProgressView()
                                                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                            }
                                        }
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
                            VStack {
                                Text("Minecraft user either doesn't exist or has never logged into Wynncraft")
                                    .font(.custom("TitilliumWeb-Light", size: 14))
                                    .foregroundColor(Color(red: 255.0/255.0, green: 0.0/255.0, blue: 0.0/255.0))
                                    .opacity(nameError)
                                Spacer()
                                    .frame(height: 175)
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
