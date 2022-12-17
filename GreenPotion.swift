//
//  GreenPotion.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/16/22.
//

import SwiftUI

struct GreenPotion: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    var body: some View {
        VStack {
            Text("This green potion that you have selected has given you 3 extra health points for your character.")
                .font(.title3)
                .padding()
            NavigationLink("Continue", destination: FirstChoice(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth + 3)
                .navigationBarBackButtonHidden())
            .padding()
            .font(.title2)
        }
    }
}

struct GreenPotion_Previews: PreviewProvider {
    static var previews: some View {
        GreenPotion(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
