//
//  PurplePotion.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/16/22.
//

import SwiftUI

struct PurplePotion: View {
    let characterName: String
    let character: String
    let weapon : String
    var characterHealth: Int
    var body: some View {
        VStack {
            Text("This purple potion that you have selected has given you 5 extra health points for your character.")
                .font(.title3)
                .padding()
            NavigationLink("Continue", destination: FirstChoice(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth + 5)
                .navigationBarBackButtonHidden())
            .padding()
            .font(.title2)
        }
    }
}

struct PurplePotion_Previews: PreviewProvider {
    static var previews: some View {
        PurplePotion(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
