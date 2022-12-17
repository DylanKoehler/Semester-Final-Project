//
//  Cave.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/14/22.
//

import SwiftUI

struct Cave: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
        VStack {
            Text("      As you walk into the cave you the light gets darker and darker until it is pitch black.  You can barely see as it is very dusty and foggy.  You can continue into the cave not knowing what is inside or you can go back to where you came from and choose a different path.")
                .foregroundColor(.white)
                .padding()
                .font(.title3)
            Image(character)
                .resizable()
                .frame(width: 200,height: 200)
                .padding()
            NavigationLink("Continue forward", destination: Cave2(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
                .font(.title2)
                .padding()
            NavigationLink("Turn around and leave the cave", destination: FirstChoice(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
                .font(.title2)
                .padding()
        })

    }
}

struct Cave_Previews: PreviewProvider {
    static var previews: some View {
        Cave(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
