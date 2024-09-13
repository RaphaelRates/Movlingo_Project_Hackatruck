//
//  CardsPalavras.swift
//  Movlingo
//
//  Created by Turma02-25 on 04/09/24.
//

import SwiftUI

struct CardsPalavras: View {
    
    @StateObject var viewModel2 = ViewModelCards()
    
    var body: some View {
       
        NavigationStack{
            ZStack{
                backgroundGradient
                VStack{
                    Text("Cards").foregroundStyle(.white).font(.title)
                    Spacer()
                    
                    ScrollView(.vertical){
                        ZStack{
//                            VStack(spacing: 20){
//                                ForEach(viewModel2.chars, id: \.self){_ in
//                                    Rectangle().fill(.white).frame(width: 210, height: 250).opacity(0.15)
//                                }
//                            }
                            VStack(spacing: 20){
                                ForEach(viewModel2.chars, id: \.self){i in
                                    NavigationLink(destination: PergutasCards(perguntausa: i)){
                                        VStack{
                                            Text("\(i.pergunta)").foregroundStyle(.white).font(.title)
                                        }.frame(width: 200,height: 150).background(.bgSearch)
                                                                            }
                                }
                            }
                        }
                    }
                    .padding(.bottom,50)
                }
                
                
            }
            .onAppear(){
                viewModel2.fetch()
            }
            .
            ignoresSafeArea()
        }
    }
}

#Preview {
    CardsPalavras()
}
