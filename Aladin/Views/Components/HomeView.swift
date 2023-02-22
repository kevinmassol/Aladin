//
//  HomeView.swift
//  Aladin
//
//  Created by KEVIN on 20/02/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image("cover")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .background(.white)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(.indigo, style: StrokeStyle(lineWidth: 3)))
            }
            Text("L'app du Génie")
                .font(.title)
                .foregroundColor(.accentColor)
                .bold()
            Divider()
                .frame(height: 2)
                .background(.indigo)
                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
            Text("Venez me frotter la lampe pour obtenir vos 3 voeux, et ainsi réaliser vos rêves les plus fous!")
                .foregroundColor(.accentColor)
                .italic()
                .multilineTextAlignment(.center)
                .padding()
            Image("lamp")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(25)
                .padding()
                .clipped()
            Spacer()
        }
//        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
