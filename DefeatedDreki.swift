//
//  DefeatedDreki.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/16/22.
//

import SwiftUI

struct DefeatedDreki: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    
    var body: some View {
        VStack {
            Text("Congratulations \(characterName) on defeating the Dreki.  We are so thankful for your service.  We are forever in your debt")
                .font(.title3)
                .padding()
            HStack {
                Image(character)
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding()
                Image("King")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding()
            }
        }
    }
}

struct DefeatedDreki_Previews: PreviewProvider {
    static var previews: some View {
        DefeatedDreki(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
