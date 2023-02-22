//
//  HomePageView.swift
//  Aladin
//
//  Created by KEVIN on 22/02/2023.
//

import SwiftUI

struct HomePageView: View {
    
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Text("Accueil")
                    Image(systemName: "house.fill")
                }
                .tag(0)
            WishesView()
                .tabItem {
                    Text("Réalisations")
                    Image(systemName: "lamp.desk.fill")
                }
                .tag(1)
            ContactView()
                .tabItem {
                    Text("Contact")
                    Image(systemName: "globe")
                }
                .tag(2)
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
