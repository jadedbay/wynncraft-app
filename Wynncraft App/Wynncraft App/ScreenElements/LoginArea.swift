//
//  LoginArea.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

let loginAreaBackground = Color(red: 186.0/255.0, green: 170.0/255.0, blue: 128.0/255.0)

struct LoginArea: View {
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image("corner_t_left")
                    Spacer()
                        .frame(width: 0)
                    Image("border_w_200")
                    Spacer()
                        .frame(width: 0)
                    Image("corner_t_right")
                }
                Spacer()
                    .frame(height: 0)
                HStack {
                    Image("border_h_40")
                    Spacer()
                        .frame(width: 0, height: 0)
                    Rectangle()
                        .frame(width: 200, height: 40)
                        .foregroundColor(loginAreaBackground)
                    Spacer()
                        .frame(width: 0, height: 0)
                    Image("border_h_40")
                }
                Spacer()
                    .frame(height: 0)
                HStack {
                    Image("corner_b_left")
                    Spacer()
                        .frame(width: 0)
                    Image("border_w_200")
                    Spacer()
                        .frame(width: 0)
                    Image("corner_b_right")
                }
            }
        }
    }
}

struct LoginArea_Previews: PreviewProvider {
    static var previews: some View {
        LoginArea()
    }
}
