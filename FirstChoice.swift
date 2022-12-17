//
//  FirstChoice.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/14/22.
//

import SwiftUI

struct FirstChoice: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    @State private var potionMasterAvailable = true
    var body: some View {
        
        VStack {
            Text("      As you go along you come across 3 decisions which will all change your fate.")
                .font(.title3)
            NavigationLink("Go to the Cave", destination: Cave(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth)
                .navigationBarBackButtonHidden())
            .padding()
            .font(.title2)
            NavigationLink("Go to the Potion Master", destination: PotionMaster(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth)
                .navigationBarBackButtonHidden())
            .padding()
            .font(.title2)
            .disabled(potionMasterAvailable == false)
            NavigationLink("Go to the Merchant", destination: Merchant(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
            .padding()
            .font(.title2)

        }
    }
}

struct FirstChoice_Previews: PreviewProvider {
    static var previews: some View {
        FirstChoice(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
