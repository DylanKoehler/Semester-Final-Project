//
//  Directions.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/16/22.
//

import SwiftUI

struct Directions: View {
    var body: some View {
        Text("      This game is a standard choose your own adventure game where as you go you will have different options to choose from.  The twist to this is that in this game you can fight enemies in a dice combat similar to risk.")
            .padding()
            .font(.title3)
        Text("      You will roll 3 dice and your enemy will roll 2 dice.  If your 2 highest rolls are higher than your enemies 2 highest rolls then you will do 2 damage.  If their 2 rolls are higher or equal to your 2 highest rolls then you will lose 2 hitpoints.  This will go on until one of you has won.  If you lose then your character will perish and you will lose the game.")
            .padding()
            .font(.title3)
    }
}

struct Directions_Previews: PreviewProvider {
    static var previews: some View {
        Directions()
    }
}
