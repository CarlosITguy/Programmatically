
//  Created by Carlos Valderrama on 11/4/24.


import Foundation

protocol NetworkManagable {
    func fetchData() -> [String]
}

class NetworkManager: NetworkManagable {
    func fetchData() -> [String] {
        return data
    }
    
     private let data : [String] = ["Aphelios" , "AurelionSol","Bard", "Braum","Daeja" , "Diana" ,"Ezreal","Gnar", "Graves", "Hecarim", "Heimerdinger","Jax", "Jayce", "Kaisa", "Karma" , "LeeSin", "Leona", "Lilia", "Lulu", "Lux", "Malphite", "Nasus", "Nidalee", "Nilah", "Nomsy" ,"Nunu", "Olaf", "Pantheon","Sylas"]
    // TODO: For the moment they are the exact same strings replace with an actuall api call
//     private let img : [String] =  ["Aphelios" , "AurelionSol","Bard", "Braum","Daeja" , "Diana" ,"Ezreal","Gnar", "Graves", "Hecarim", "Heimerdinger","Jax", "Jayce", "Kaisa", "Karma" , "LeeSin", "Leona", "Lilia", "Lulu", "Lux", "Malphite", "Nasus", "Nidalee", "Nilah", "Nomsy" ,"Nunu", "Olaf", "Pantheon","Sylas"]
//
}
