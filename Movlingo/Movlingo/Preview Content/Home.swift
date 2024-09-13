//
//  Home.swift
//  Movlingo
//
//  Created by Turma02-25 on 04/09/24.
//

//
//  Home.swift
//  Movlingo
//
//  Created by Turma02-25 on 04/09/24.
//
let backgroundGradient = LinearGradient(
    colors: [Color.black, Color.darkblueGradient],
    startPoint: .top, endPoint: .bottom)
import SwiftUI


struct Home: View {
    @StateObject var viewModel = ViewModel()

    
    var body: some View {
        NavigationStack{
            ZStack{
                backgroundGradient
                ScrollView{
                    VStack{
                        Image(.logo).resizable().scaledToFit().frame(width: 400, height: 250).opacity(0.9)
                        
                        Text("Destaques").foregroundStyle(.white).font(.title)
                            ScrollView(.horizontal){
                                HStack(spacing: 20){
                                    ForEach(viewModel.chars, id: \.self){_id in
                                        NavigationLink(destination: SingleFilme(filme_single: _id)){
                                            AsyncImage(url:URL(string:"\(_id.Url)")){img in
                                                img.image?.resizable().scaledToFit().frame( width: 110, height: 150)}
                                        }
                                    }
                                }
                            }
                        Text("Infantil").foregroundStyle(.white).font(.title)
                            ScrollView(.horizontal){
                                HStack(spacing: 20){
                                    ForEach(viewModel.chars.filter{$0.Classificação == 0}, id: \.self){_id in
                                        NavigationLink(destination: SingleFilme(filme_single: _id)){
                                            AsyncImage(url:URL(string:"\(_id.Url)")){img in
                                                img.image?.resizable().scaledToFit().frame( width: 110, height: 150)}
                                        }
                                    }
                                }
                            }
                        Text("Inglês").foregroundStyle(.white).font(.title)
                            ScrollView(.horizontal){
                                HStack(spacing: 20){
                                    ForEach(viewModel.chars.filter{$0.idioma.contains("Inglês")}, id: \.self){_id in
                                        NavigationLink(destination: SingleFilme(filme_single: _id)){
                                            AsyncImage(url:URL(string:"\(_id.Url)")){img in
                                                img.image?.resizable().scaledToFit().frame( width: 110, height: 150)}
                                        }
                                    }
                                }
                            }
                        Text("Maiores de idade").foregroundStyle(.white).font(.title)
                            ScrollView(.horizontal){
                                HStack(spacing: 20){
                                    ForEach(viewModel.chars.filter{$0.Classificação >= 16}, id: \.self){_id in
                                        NavigationLink(destination: SingleFilme(filme_single: _id)){
                                            AsyncImage(url:URL(string:"\(_id.Url)")){img in
                                                img.image?.resizable().scaledToFit().frame( width: 110, height: 150)}
                                        }
                                    }
                                }
                            }

                        Spacer()
                    }.onAppear(){
                        viewModel.fetch()
                    }

                }.padding(.bottom,50)
            }.ignoresSafeArea()
        }
        
        }
}

#Preview {
    Home()
}
