//
//  Webservice.swift
//  Wynncraft App
//
//  Created by JJ B on 20/7/21.
//

import Foundation

class Webservice: ObservableObject {
    
    func getUUID(username: String, completionHandler: @escaping (UUIDStructure) -> Void){
        let url = URL(string: "https://api.wynncraft.com/v2/player/\(username)/uuid")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let data = data {
                if let decodedUUID = try? JSONDecoder().decode(UUIDStructure.self, from: data){
                    completionHandler(decodedUUID)
                }
            }
        }.resume()
    }
}



struct UUIDStructure: Decodable {
    let code: Int
    let data: [UUID]
}

struct UUID: Decodable {
    let uuid: String
}

