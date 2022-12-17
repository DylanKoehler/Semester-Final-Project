//
//  ContentView.swift
//  Semester Final Project
//
//  Created by Dylan Koehler on 12/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Choose Your own adventure")
                    .padding()
                    .font(.title)
                    .multilineTextAlignment(.center)
                NavigationLink("Player Select", destination: PlayerSelect().navigationBarBackButtonHidden())
                    .padding()
                    .font(.title2)
                NavigationLink("How to Play", destination: Directions())
                    .padding()
                    .font(.title2)
            }
        }
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
