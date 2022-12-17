//
//  DefeatedLizard2.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/16/22.
//

import SwiftUI

struct DefeatedLizard2: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    var body: some View {
        VStack {
            Text("      As you continue along you come across a large forrest with giant trees.  Suddenly there is a large roar and something coming towards you from the forrest.  As this thing comes out of the forrest you see that it is the feared Dreki that the King wanted you to kill.  There is no running from it.  You must fight it.")
                .font(.title3)
                .padding()
            HStack {
                Image(character)
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding()
                Image("Dreki")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding()
            }
            NavigationLink("Fight", destination: DrekiFight(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
                .font(.title2)
                .padding()
        }
    }
}

struct DefeatedLizard2_Previews: PreviewProvider {
    static var previews: some View {
        DefeatedLizard2(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
