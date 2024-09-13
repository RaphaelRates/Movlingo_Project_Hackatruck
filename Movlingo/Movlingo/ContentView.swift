//
//  ContentView.swift
//  Movlingo
//
//  Created by Turma02-25 on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().backgroundColor = .tabbarBg
    }
    
    var body: some View {
        TabView{
            Home()
                .tabItem { Label("Home", systemImage: "house.fill") }
            Search()
                .tabItem { Label("Pesquisa", systemImage:  "magnifyingglass") }
            CardsPalavras()
                .tabItem { Label("tres", systemImage: "menucard") }
            Desafios()
                .tabItem { Label("tresimeiu", systemImage: "doc.questionmark.fill.rtl") }
            Profile()
                .tabItem { Label("quatro", systemImage: "person")}
        }
        .accentColor(.blue)
    }
}

#Preview {
    ContentView()
}
