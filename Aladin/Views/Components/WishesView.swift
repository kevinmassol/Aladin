//
//  WishesView.swift
//  Aladin
//
//  Created by KEVIN on 22/02/2023.
//

import SwiftUI

struct WishesView: View {
    
    @State var aladin = false
    @State var abu = false
    @State var jafar = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Préparez vous à rester bouche bée. \nMes réalisations sont plus folles les unes que les autres !")
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                    Image("genie")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Divider()
                    NavigationLink {
                        TransformationView(transformed: $aladin, falseValue: "aladin", trueValue: "ali")
                    } label: {
                        HStack {
                            Image("aladin")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150)
                                .cornerRadius(25)
                            Text("Voulez-vous voir le fabuleux maekeover de notre cher Aladin ?")
                        }
                    }
                    NavigationLink {
                        TransformationView(transformed: $jafar, falseValue: "jafar", trueValue: "jafar_snake")
                    } label: {
                        VStack {
                            Text("Quelle était la mauvaise idée de Jafar ?")
                            Image("jafar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 125, height: 125)
                                .clipShape(Circle())
                        }
                        .padding()
                        .background(.mint)
                        .cornerRadius(18)
                    }
                    NavigationLink("Et Abu dans tous ça ???") {
                        TransformationView(transformed: $abu, falseValue: "abu_monkey", trueValue: "abu_elephant")
                    }
                }
                Image("applause")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Alors c'est qui l'artiste ?")
                    .foregroundColor(.accentColor)
            }
            .navigationTitle("Réalisations")
        }
    }
}

struct WishesView_Previews: PreviewProvider {
    static var previews: some View {
        WishesView()
    }
}
