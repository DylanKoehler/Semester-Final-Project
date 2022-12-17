//
//  DrekiFight.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/16/22.
//

import SwiftUI

struct DrekiFight: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    @State private var DrekiHealth = 20
    @State private var characterCurrentHealth = 10
    
    @State private var playerRandomValue1 = 0
    @State private var playerRandomValue2 = 0
    @State private var playerRandomValue3 = 0
    @State private var rotation = 0.0
    
    @State private var playerHighestValue1 = 0
    @State private var playerHighestValue2 = 0
    
    @State private var DrekiRandomValue1 = 0
    @State private var DrekiRandomValue2 = 0
    
    @State private var DrekiHighestValue1 = 0
    @State private var DrekiHighestValue2 = 0
    @State private var canRoll = true
    
    @State private var showingLose = false
    @State private var showHealth = false
    @State private var fight = false
    var body: some View {
        VStack {
            Text("\(characterName) vs Dreki")
                .font(.title)
                .padding()
                .multilineTextAlignment(.center)
            HStack {
                VStack {
                    Image(character)
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding()
                    Text("\(characterName)'s Health")
                        .padding()
                        .font(.title2)
                    if (showHealth == true) {
                        Text("\(characterCurrentHealth)")
                            .padding()
                            .font(.title3)
                    }
                    Image("pips \(playerRandomValue1)")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(.degrees(rotation))
                        .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                        .padding()
                        .onTapGesture {
                            chooseRandom(times: 3)
                            withAnimation(.interpolatingSpring(stiffness: 10, damping: 2)) {
                                rotation += 360
                            }
                        }
                        .disabled(canRoll == false)
                    Image("pips \(playerRandomValue2)")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(.degrees(rotation))
                        .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                        .padding()
                        .onTapGesture {
                            chooseRandom(times: 3)
                            withAnimation(.interpolatingSpring(stiffness: 10, damping: 2)) {
                                rotation += 360
                            }
                        }
                        .disabled(canRoll == false)
                    Image("pips \(playerRandomValue3)")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(.degrees(rotation))
                        .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                        .padding()
                        .onTapGesture {
                            chooseRandom(times: 3)
                            withAnimation(.interpolatingSpring(stiffness: 10, damping: 2)) {
                                rotation += 360
                            }
                        }
                        .disabled(canRoll == false)
                    //Text("\(playerHighestValue1)")
                    //Text("\(playerRandomValue2)")
                }
                VStack {
                    Image("Dreki")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding()
                    Text("Dreki's Health")
                        .padding()
                        .font(.title2)
                    if (showHealth == true) {
                        Text("\(DrekiHealth)")
                            .padding()
                            .font(.title2)
                    }
                    Image("pips \(DrekiRandomValue1)")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(.degrees(rotation))
                        .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                        .padding()
                        .onTapGesture {
                            chooseRandom(times: 3)
                            withAnimation(.interpolatingSpring(stiffness: 10, damping: 2)) {
                                rotation += 360
                            }
                        }
                        .disabled(canRoll == false)
                    Image("pips \(DrekiRandomValue2)")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(.degrees(rotation))
                        .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                        .padding()
                        .onTapGesture {
                            chooseRandom(times: 3)
                            withAnimation(.interpolatingSpring(stiffness: 10, damping: 2)) {
                                rotation += 360
                            }
                        }
                        .disabled(canRoll == false)
                    Image("Transparent")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .padding()
                    //Text("\(lizardHighestValue1)")
                    //Text("\(lizardRandomValue2)")
                }
            }
            if (fight == false) {
                Button("Begin") {
                    fight = true
                    characterCurrentHealth = characterHealth
                }
                .padding()
                .font(.title)
            }
            if (fight == true) {
                Button("Attack") {
                    canRoll = true
                    showHealth = true
                    if (characterCurrentHealth > 0) {
                        showingLose = false
                    }
                    if (characterCurrentHealth <= 0) {
                        showingLose = true
                    }
                    //Finding the Highest number the Player rolled
                    if (playerRandomValue1 >= playerRandomValue2 && playerRandomValue1 >= playerRandomValue3) {
                        playerHighestValue1 = playerRandomValue1
                    }
                    if (playerRandomValue2 >= playerRandomValue1 && playerRandomValue2 >= playerRandomValue3) {
                        playerHighestValue1 = playerRandomValue2
                    }
                    if (playerRandomValue3 >= playerRandomValue1 && playerRandomValue3 >= playerRandomValue2) {
                        playerHighestValue1 = playerRandomValue3
                    }
                    //########################################################################
                    //Finding the second Highest number of the player
                    if (playerRandomValue2 >= playerRandomValue1 && playerRandomValue1 >= playerRandomValue3) {
                        playerHighestValue2 = playerRandomValue1
                    }
                    if (playerRandomValue2 >= playerRandomValue1 && playerRandomValue1 >= playerRandomValue3) {
                        playerHighestValue2 = playerRandomValue1
                    }
                    //---------------------------------------------------------------------------------
                    if (playerRandomValue1 >= playerRandomValue2 && playerRandomValue2 >= playerRandomValue3) {
                        playerHighestValue2 = playerRandomValue2
                    }
                    if (playerRandomValue3 >= playerRandomValue2 && playerRandomValue2 >= playerRandomValue1) {
                        playerHighestValue2 = playerRandomValue2
                    }
                    //---------------------------------------------------------------------------------
                    if (playerRandomValue1 >= playerRandomValue3 && playerRandomValue3 >= playerRandomValue2) {
                        playerHighestValue2 = playerRandomValue3
                    }
                    if (playerRandomValue2 >= playerRandomValue3 && playerRandomValue3 >= playerRandomValue1) {
                        playerHighestValue2 = playerRandomValue2
                    }
                    //########################################################################
                    //Finding the Highest number the Lizard rolls
                    if(DrekiRandomValue1 >= DrekiRandomValue2) {
                        DrekiHighestValue1 = DrekiRandomValue1
                    }
                    if (DrekiRandomValue2 >= DrekiRandomValue1) {
                        DrekiHighestValue1 = DrekiRandomValue2
                    }
                    if (DrekiRandomValue1 <= DrekiRandomValue2) {
                        DrekiHighestValue2 = DrekiRandomValue1
                    }
                    if (DrekiRandomValue2 <= DrekiRandomValue1) {
                        DrekiHighestValue2 = DrekiRandomValue2
                    }
                    //########################################################################
                    //Setting the Health of both characters after each turn
                    if (playerHighestValue1 > DrekiHighestValue1) {
                        DrekiHealth = DrekiHealth - 1
                    }
                    if (playerHighestValue2 > DrekiHighestValue2) {
                        DrekiHealth = DrekiHealth - 1
                    }
                    if (DrekiHighestValue1 >= playerHighestValue1) {
                        characterCurrentHealth = characterCurrentHealth - 1
                    }
                    if (DrekiHighestValue2 >= playerHighestValue2) {
                        characterCurrentHealth = characterCurrentHealth - 1
                    }
                }
                .padding()
                .font(.title)
                .disabled(canRoll == true)
            }
        }
        //Show You Lose screen if you lose
        .fullScreenCover(isPresented: $showingLose) {
            YouLose()
        }
        //########################################################################
        // If a character loses all their health the game moves to the next view
        if (DrekiHealth <= 0) {
            NavigationLink("Continue", destination: DefeatedDreki(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
                .font(.title2)
                .padding()
        }
    }
    
    
    func chooseRandom(times:Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                playerRandomValue1 = Int.random(in: 1...6)
                playerRandomValue2 = Int.random(in: 1...6)
                playerRandomValue3 = Int.random(in: 1...6)
                DrekiRandomValue1 = Int.random(in: 1...6)
                DrekiRandomValue2 = Int.random(in: 1...6)
                chooseRandom(times: times - 1)
                canRoll = false
            }
        }
    }
}


struct DrekiFight_Previews: PreviewProvider {
    static var previews: some View {
        DrekiFight(characterName: "Bill", character: "Person", weapon: "knife", characterHealth: 1)
    }
}
