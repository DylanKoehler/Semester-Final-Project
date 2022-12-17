//
//  DefeatedLizard.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/15/22.
//

import SwiftUI

struct DefeatedLizard: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int

    var body: some View {
        VStack {
            Text("      Congratulations on defeating the lizard.  With the experience you have earned from fighting the lizard you have earned 10 health points for future battles.")
                .font(.title3)
                .padding()
            Image(character)
                .resizable()
                .frame(width: 200,height: 200)
                .padding()
            NavigationLink("Continue", destination: DefeatedLizard2(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth + 10).navigationBarBackButtonHidden())
                .font(.title2)
                .padding()
        }
    }
}

struct DefeatedLizard_Previews: PreviewProvider {
    static var previews: some View {
        DefeatedLizard(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
