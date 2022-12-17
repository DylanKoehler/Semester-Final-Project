//
//  Cave3.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/15/22.
//

import SwiftUI

struct Cave3: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    var body: some View {
        Text("Suddenly the Earth shakes and the ceiling collapses and blocks where you came in from.  Your only escape is just past the lizard but he won't just let you out very easily.  You must defeat the lizard to escape the cave.")
            .padding()
            .font(.title3)
        NavigationLink("Fight", destination: BabyLizardFight(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
            .font(.title2)
            .padding()
    }
}

struct Cave3_Previews: PreviewProvider {
    static var previews: some View {
        Cave3(characterName: "Bill", character: "Person", weapon: "knife",characterHealth: 1)
    }
}
