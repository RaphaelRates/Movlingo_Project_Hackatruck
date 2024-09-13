
//  Desafios.swift
//  Movlingo
//
//  Created by Turma02-25 on 04/09/24.
//

//import SwiftUI
//
//struct Desafios: View {
//    @StateObject var viewModel = ViewModelQuest()
//    
//    var body: some View {
//        NavigationStack{
//            ScrollView{
//                VStack{
//                    Text("Inglês")
//                        .font(.title)
//                    ForEach(viewModel.chars.filter($0.idioma.contains("inglês")), id: \.self){ i in
//                            NavigationLink(destination: PerguntasSolo(Questao: i)){
//                                    Text(i.Questao)
//                                        .foregroundStyle(.white)
//                                        .frame(width: 350, height: 30)
//                                        .background(){
//                                            Color(.bgprofile)
//                                        }
//                                        .cornerRadius(15)
//                                        
//                        }
//                    }
//                    Text("Espanhol")
//                        .font(.title)
//                    ForEach(viewModel.chars.filter($0.idioma.contains("espanhol")), id: \.self){ i in
//                            NavigationLink(destination: PerguntasSolo(Questao: i)){
//                                    Text(i.Questao)
//                                        .foregroundStyle(.white)
//                                        .frame(width: 350, height: 30)
//                                        .background(){
//                                            Color(.bgprofile)
//                                        }
//                                        .cornerRadius(15)
//                                }
//                    
//                    }
//                    Text("Japonês")
//                        .font(.title)
//                    ForEach(viewModel.chars.filter($0.idioma.contains("japonês")), id: \.self){ i in
//                      
//                            NavigationLink(destination: PerguntasSolo(Questao: i)){
//                                    Text(i.Questao)
//                                        .foregroundStyle(.white)
//                                        .frame(width: 350, height: 30)
//                                        .background(){
//                                            Color(.bgprofile)
//                                        }
//                                        .cornerRadius(15)
//                                }
//                        
//                    }
//                
//                }
//            }.padding(.top,130)
//                .onAppear(){
//                viewModel.fetch()
//            }
//            .frame(width:400, height: 900)
//            .foregroundColor(.white)
//        }
//    }
//    
//}
//
//#Preview {
//    Desafios()
//}
import SwiftUI

struct Desafios: View {
    @StateObject var viewModel = ViewModelQuest()
    
    private var idiomas = ["ingles", "espanhol","japonés"]
    
    var body: some View {
        NavigationStack {
            VStack{
                ScrollView {

                        ForEach(idiomas, id: \.self) { idio in
                            Text("\(idio)")
                                .font(.title)
                                .padding(.top, 10)
                            ForEach(viewModel.chars.filter { $0.idioma.contains(idio) }, id: \.self) { questao in
                                NavigationLink(destination: PerguntaSolo(Questao: questao)) {
                                    Text(questao.Questao)
                                        .foregroundColor(.white)
                                        .frame(width: 350, height: 30)
                                        .background(.bgprofile)
                                        .cornerRadius(15)
                                }
                            }
                        }.foregroundColor(.white)
             
                    
                }
                .padding(.bottom,140)
                .padding(.top,100)
                .onAppear {
                    viewModel.fetch()
                }
                
            }
            .frame(width: 400,height: 800)
            .padding(.bottom,50)
            .background(){
                LinearGradient(colors: [.black, .darkblueGradient], startPoint: .top, endPoint: .bottom)
            }
        }
            
    }
}

struct Desafios_Previews: PreviewProvider {
    static var previews: some View {
        Desafios()
    }
}
