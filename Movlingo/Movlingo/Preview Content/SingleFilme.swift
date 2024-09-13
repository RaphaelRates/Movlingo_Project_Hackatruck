//
//  SingleFilme.swift
//  Movlingo
//
//  Created by Turma02-25 on 09/09/24.
//

import SwiftUI

struct SingleFilme: View {
    @State var filme_single: Filme
    @StateObject var viewModel = ViewModel()
    func test(){
//        viewModel.updateFilme(filmeId: filmeId, rev: rev, field: .favorito(true)) { result in
//            switch result {
//            case .success(let updatedFilme):
//                print("Filme atualizado com sucesso: \(updatedFilme)")
//            case .failure(let error):
//                print("Falha ao atualizar o filme: \(error)")
//            }
//        }
    }
    func Mostrar_idade(idade: Int) -> String{
        switch idade{
        case 0:
            return "l.square.fill"
        case 10:
                return "10.square.fill"
        case 12:
                return "12.square.fill"
        case 14:
                return "14.square.fill"
        case 16:
            return "16.square.fill"
        case 18:
            return "18.square.fill"
        default:
            return "x.square.fill"
            
        }
    }
    var body: some View {
        VStack{
            ScrollView{
                AsyncImage(url: URL(string: "\(filme_single.Url)")){ image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                    .frame(width: 370,height:350)
                HStack{
                    Text("\(filme_single.nome)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("\(filme_single.idioma)")
                        .font(.system(size: 20))
                        .frame(width: 100,height: 30)
                        .background(.bgSearch)
                        .cornerRadius(10)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }.padding(.horizontal)
                    .padding(.bottom,20)
                HStack{
                    Text("\(filme_single.gênero)")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Label("",systemImage: "\(Mostrar_idade(idade: filme_single.Classificação))")
                    Spacer()
                    Button(action: test){
                        if filme_single.favorito{
                            Label( "",systemImage: "star.fill")
                        }else{
                            Label( "",systemImage: "star")
                        }
                        
                    }.padding(.horizontal)
                    Button(action: test){
                        if filme_single.assistirMt{
                            Label( "",systemImage: "square.and.arrow.up.fill")
                        }else{
                            Label( "",systemImage: "square.and.arrow.up")
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom,20)
                VStack{
                    Text("\(filme_single.descrição)")
                }.padding()
                    .background(.bgSearch)
                    .cornerRadius(15)
                
                

            }
            .padding(.top,90)
            .padding(.horizontal)
            .padding(.bottom,100)
            .frame(width: 400,height: .infinity)
        }
            .frame(width:450, height: 830)
            .padding()
            .background(){
                LinearGradient(colors: [.black, .darkblueGradient], startPoint: .top, endPoint: .bottom)
            }
            .foregroundColor(.white)
    }
}

#Preview {
    SingleFilme(filme_single: Filme( _id: "", _rev: "", nome: "", idioma: "", descrição: "", Url: "", favorito: false, Classificação: 0, assistirMt: false, gênero: ""))
}
