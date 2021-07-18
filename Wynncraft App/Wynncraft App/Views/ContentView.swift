//
//  ContentView.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

let tabBackground = UIColor(red: 186.0/255.0, green: 170.0/255.0, blue: 128.0/255.0, alpha: 1)

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            GeneralView()
                .tabItem {
                    Text("Wynn")
                }
            LeaderboardsView()
                .tabItem {
                    Text("Leaderboards")
                }
            PlayerView()
                .tabItem {
                    Text("Player")
                }
            GuildView()
                .tabItem {
                    Text("Guild")
                }
            BuildsView()
                .tabItem {
                    Text("Builds")
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
