//
//  PergutasCards.swift
//  Movlingo
//
//  Created by Turma02-25 on 12/09/24.
//

import SwiftUI

struct PergutasCards: View {
   @State var perguntausa: Cards
    var body: some View {
        
        NavigationStack{
            ZStack{
                backgroundGradient
                VStack{
                    Text("Qual o signifcado dessa palavra?").foregroundStyle(.white).font(.title)
                    Spacer()
                }
                Rectangle().fill(.white).frame(width: 300, height: 300).opacity(0.1)
                NavigationLink(destination:RespostaCards(respostausa:perguntausa)){
                    Text("\(perguntausa.pergunta)").foregroundStyle(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }.ignoresSafeArea()
        }    }
}

#Preview {
    PergutasCards( perguntausa: Cards(_id: "", _rev: "", pergunta: "", resposta: ""))
}
