//
//  BabyLizardFight.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/15/22.
//

import SwiftUI

struct BabyLizardFight: View {
    let characterName: String
    let character: String
    let weapon : String
    let characterHealth: Int
    @State private var lizardHealth = 5
    @State private var characterCurrentHealth = 10
    
    @State private var playerRandomValue1 = 0
    @State private var playerRandomValue2 = 0
    @State private var playerRandomValue3 = 0
    @State private var rotation = 0.0
    
    @State private var playerHighestValue1 = 0
    @State private var playerHighestValue2 = 0
    
    @State private var lizardRandomValue1 = 0
    @State private var lizardRandomValue2 = 0
    
    @State private var lizardHighestValue1 = 0
    @State private var lizardHighestValue2 = 0
    @State private var canRoll = true
    @State private var showHealth = false
    
    @State private var showingLose = false
    @State private var fight = false
    var body: some View {
        VStack {
            Text("\(characterName) vs Lizard")
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
                    Image("BabyLizard")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding()
                    Text("Lizards's Health")
                        .padding()
                        .font(.title2)
                    if (showHealth == true) {
                        Text("\(lizardHealth)")
                            .padding()
                            .font(.title2)
                    }
                    Image("pips \(lizardRandomValue1)")
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
                    Image("pips \(lizardRandomValue2)")
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
                    if(lizardRandomValue1 >= lizardRandomValue2) {
                        lizardHighestValue1 = lizardRandomValue1
                    }
                    if (lizardRandomValue2 >= lizardRandomValue1) {
                        lizardHighestValue1 = lizardRandomValue2
                    }
                    if (lizardRandomValue1 <= lizardRandomValue2) {
                        lizardHighestValue2 = lizardRandomValue1
                    }
                    if (lizardRandomValue2 <= lizardRandomValue1) {
                        lizardHighestValue2 = lizardRandomValue2
                    }
                    //########################################################################
                    //Setting the Health of both characters after each turn
                    if (playerHighestValue1 > lizardHighestValue1) {
                        lizardHealth = lizardHealth - 1
                    }
                    if (playerHighestValue2 > lizardHighestValue2) {
                        lizardHealth = lizardHealth - 1
                    }
                    if (lizardHighestValue1 >= playerHighestValue1) {
                        characterCurrentHealth = characterCurrentHealth - 1
                    }
                    if (lizardHighestValue2 >= playerHighestValue2) {
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
        if (lizardHealth <= 0) {
            NavigationLink("Continue", destination: DefeatedLizard(characterName: characterName, character: character, weapon: weapon, characterHealth: characterHealth).navigationBarBackButtonHidden())
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
                lizardRandomValue1 = Int.random(in: 1...6)
                lizardRandomValue2 = Int.random(in: 1...6)
                chooseRandom(times: times - 1)
                canRoll = false
            }
        }
    }
}

struct BabyLizardFight_Previews: PreviewProvider {
    static var previews: some View {
        BabyLizardFight(characterName: "Bill", character: "Person", weapon: "knife",characterHealth: 1)
    }
}
