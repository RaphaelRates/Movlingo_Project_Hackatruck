//
//  RespostaCards.swift
//  Movlingo
//
//  Created by Turma02-25 on 12/09/24.
//

import SwiftUI

import SwiftUI

struct RespostaCards: View {
    var respostausa: Cards
    var body: some View {
        ZStack{
            backgroundGradient
            VStack{
                Text("Resposta").foregroundStyle(.white).font(.title)
                Spacer()
            }
            Rectangle().fill(.white).frame(width: 300, height: 300).opacity(0.1)
            Text("\(respostausa.resposta)").foregroundStyle(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }.ignoresSafeArea()
    }
}

#Preview {
    RespostaCards(respostausa: Cards(_id: "", _rev: "", pergunta: "", resposta: ""))
}
