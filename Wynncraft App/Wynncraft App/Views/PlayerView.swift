//
//  PlayerView.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

struct PlayerView: View {
    
    var playerUUID = userdefaults.string(forKey: "playerUUID")!
    
    @StateObject var viewModel = ImageProvider()

    var body: some View {
        ZStack {
            Background()
            let url = URL(string: "https://crafatar.com/renders/body/" + playerUUID)!
            Image(uiImage: viewModel.image)
                        .onAppear {
                            viewModel.loadImage(url: url)
                        }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
