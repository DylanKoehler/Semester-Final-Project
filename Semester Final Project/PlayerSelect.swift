//
//  PlayerSelect.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/13/22.
//

import SwiftUI

struct PlayerSelect: View {
    @State private var characterSelect = false
    @State private var nameSelect = false
    @State private var character = ""
    @State private var characters = ["Blank", "Knight", "Wizard", "Archer"]
    @State private var characterName = ""
    @State private var weapon = ""
    @State private var characterImage = ""
    @State private var characterHealth = 10
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to your player select")
                    .padding()
                    .font(.title)
                Text("Select your Character and give them a name")
                    .padding()
                TextField("What is your characters name?", text: $characterName)
                    .multilineTextAlignment(.center)
                    .padding()
                HStack {
                    ForEach(1..<4) { index in
                        Button("\(characters[index])")
                        {
                            characterSelect = true
                            character = characters[index]
                            if (character == "Knight") {
                                weapon = "Sword"
                            }
                            if(character == "Wizard") {
                                weapon = "Fireball"
                            }
                            if (character == "Archer") {
                                weapon = "Bow"
                            }
                        }
                        .padding()
                    }
                }
                if (characterSelect == true)
                {
                    Text("Your character is \(characterName) the \(character)!")
                        .padding()
                    if (character == characters[1]) {
                        Image("Knight")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .padding()
                    }
                    if (character == characters[2]) {
                        Image("Wizard")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                    if (character == characters[3]) {
                        Image("Archer")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                    NavigationLink("Continue", destination: Instructions(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth)
                        .navigationBarBackButtonHidden())
                    .padding()
                    .font(.title2)
                }
            }
        }
    }
}

struct PlayerSelect_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSelect()
    }
}
