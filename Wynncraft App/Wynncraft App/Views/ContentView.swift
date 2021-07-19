//
//  ContentView.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

let tabBackground = UIColor(red: 186.0/255.0, green: 170.0/255.0, blue: 128.0/255.0, alpha: 1)

struct ContentView: View {
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        TabView {
            GeneralView()
                .tabItem {
                    Text("Wynn")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                }
            LeaderboardsView()
                .tabItem {
                    Text("Leaderboards")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                }
            PlayerView()
                .tabItem {
                    Text("Player")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                }
            GuildView()
                .tabItem {
                    Text("Guild")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                }
            BuildsView()
                .tabItem {
                    Text("Builds")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
