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
            let url = URL(string: "https://mc-heads.net/body/" + playerUUID)!
            Image(uiImage: viewModel.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50)
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
