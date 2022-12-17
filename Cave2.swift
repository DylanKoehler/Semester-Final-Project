//
//  Cave2.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/15/22.
//

import SwiftUI

struct Cave2: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                VStack {
                    Text("As you continue further into the cave you suddenly step onto something and it lets out a loud squeal.  It is a lizard about half your size but it's teeth are razor sharp.  Sharp enoungh to wound you if it gets the chance so you must be careful when fighting it")
                        .foregroundColor(.white)
                        .padding()
                        .font(.title3)
                    HStack {
                        Image(character)
                            .resizable()
                            .frame(width: 200,height: 200)
                            .padding()
                        Image("BabyLizard")
                            .resizable()
                            .frame(width: 100,height: 100)
                            .padding()
                    }
                    NavigationLink("Continue", destination: Cave3(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
                        .font(.title2)
                        .padding()
                })
    }
}

struct Cave2_Previews: PreviewProvider {
    static var previews: some View {
        Cave2(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
