//
//  Instructions.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/13/22.
//

import SwiftUI

struct Instructions: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    var body: some View {
        VStack {
            Text("      \"Welcome \(characterName) the \(character) to our kingdom.  We have been terrorized by the Dreki.  We need your help to defeat him so take this \(weapon) and go on your way\"")
                .font(.title3)
                .padding()
            HStack {
                Image("King")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding()
            }
            NavigationLink("Continue", destination: FirstChoice(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth)
                .navigationBarBackButtonHidden())
                .padding()
                .font(.title2)
        }
    }
}

struct Instructions_Previews: PreviewProvider {
    static var previews: some View {
        Instructions(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
