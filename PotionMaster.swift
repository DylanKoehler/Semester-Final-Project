//
//  PotionMaster.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/16/22.
//

import SwiftUI

struct PotionMaster: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    @State private var hide = true
    var body: some View {
        VStack {
            Text("      Welcome to the potion masters shop.  Select a potion to take for free.  These potions will help you to defeat enemies that you may face.")
                .font(.title3)
                .padding()
            HStack {
                VStack {
                    Image("GreenPotion")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding()
                    NavigationLink("Green Potion", destination: GreenPotion(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth)
                        .navigationBarBackButtonHidden())
                    .padding()
                    .font(.title2)
                }
                VStack {
                    Image("PurplePotion")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding()
                    NavigationLink("Purple Potion", destination: PurplePotion(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth)
                        .navigationBarBackButtonHidden())
                    .padding()
                    .font(.title2)
                }
            }
            HStack {
                Image("PotionMaster")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding()
                Image(character)
                    .resizable()
                    .frame(width: 200,height: 200)
                    .padding()
            }
        }
    }
}

struct PotionMaster_Previews: PreviewProvider {
    static var previews: some View {
        PotionMaster(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
