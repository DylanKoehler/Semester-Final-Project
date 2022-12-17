//
//  Merchant.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/14/22.
//

import SwiftUI

struct Merchant: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    var body: some View {
        VStack {
            Text("I'm sorry but the Merchant is currently sailing the high seas and is unavailable.")
                .font(.title3)
                .padding()
            Image(character)
                .resizable()
                .frame(width: 200,height: 200)
                .padding()
            NavigationLink("Go Back", destination: FirstChoice(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth)
                .navigationBarBackButtonHidden())
                .padding()
                .font(.title2)
        }
    }
}

struct Merchant_Previews: PreviewProvider {
    static var previews: some View {
        Merchant(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
