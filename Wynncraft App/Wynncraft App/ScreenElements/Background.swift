//
//  Background.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

let wynnBackground = UIColor(red: 94.0/255.0, green: 86.0/255.0, blue: 65.0/255.0, alpha: 1)
let borderA = Color(red: 51.0/255.0, green: 31.0/255.0, blue: 26.0/255.0)
let borderB = Color(red: 129.0/255.0, green: 108.0/255.0, blue: 83.0/255.0)
let borderC = Color(red: 151.0/255.0, green: 132.0/255.0, blue: 93.0/255.0)

struct Background: View {
    
    var body: some View {
        ZStack {
            Color(wynnBackground)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                Image("tabDivider")
            }
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
