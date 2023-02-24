//
//  ContactView.swift
//  Aladin
//
//  Created by KEVIN on 22/02/2023.
//

import SwiftUI

struct ContactView: View {
    
    @State var buttonCliked = false
    
    var body: some View {
        VStack {
            Text("Ou me trouver ?")
                .font(.title)
                .foregroundColor(.accentColor)
                .bold()
            Image("cave_outside")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Button("Dans la cave des merveilles") {
                buttonCliked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $buttonCliked) {
                VStack {
                    Text("Bien au chaud à l'intérieur de la lampe")
                        .foregroundColor(.accentColor)
                        .bold()
                    Image("dans_lampe")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            Image("cave_inside")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .shadow(color: .accentColor, radius: 2, x: 3, y: 3)
                .padding()
            Spacer()
            Text("Attention !!! \nVous ne pouvez prendre QUE la lampe dans cette cave aux merveilles !")
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .italic()
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
