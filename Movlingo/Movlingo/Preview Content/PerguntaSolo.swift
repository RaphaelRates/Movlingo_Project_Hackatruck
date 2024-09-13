//
//  PerguntaSolo.swift
//  Movlingo
//
//  Created by Turma02-25 on 11/09/24.
//


//  PerguntaSolo.swift
//  Movlingo
//
//  Created by Turma02-3 on 11/09/24.
//

//import SwiftUI
//
//struct PerguntasSolo: View {
//    @State public var Questao: perguntas
//    var body: some View {
//        ZStack{
//            LinearGradient(colors: [.black, .darkblueGradient], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
//            
//            Rectangle()
//                .foregroundColor(.bgprofile)
//                .frame(width: 340,height: 250)
//
//                .cornerRadius(50)
//                .overlay(
//                    VStack(spacing: 30){
//                    Text(Questao.Alternativa1)
//                    
//                        .frame(width:250, height: .infinity )
//                            
//                            .background(){
//                                Color(.brown)
//                            }
//                            
//                            .cornerRadius(10)
//                    Text(Questao.Alternativa2)
//                    
//                        .frame(width:250, height: .infinity )
//                            
//                            .background(){
//                                Color(.brown)
//                            }
//                            
//                            .cornerRadius(10)
//                    Text(Questao.Alternativa3)
//                    
//                        .frame(width:250, height: .infinity )
//                            
//                            .background(){
//                                Color(.brown)
//                            }
//                            
//                            .cornerRadius(10)
//                    Text(Questao.Alternativa4)
//                    
//                        .frame(width:250, height: .infinity )
//                            
//                            .background(){
//                                Color(.brown)
//                            }
//                            
//                            .cornerRadius(10)
//                })
//            VStack{
//                
//                Text(Questao.Questao)
//                    .font(.title)
//                    .frame(width: .infinity, height: .infinity) //Se a pergunta for grande, retir esse padding
//                    .padding()
//               Spacer()
//            }
//            
//        }
//        //.frame(width:380, height: 700)
// 
//        .foregroundColor(.white)
//        
//        
//    }
//}
//
//#Preview {
//    PerguntasSolo(Questao: perguntas(idioma: "", Questao: "", Alternativa1: "", Alternativa2: "", Alternativa3: "", Alternativa4: ""))
//}


import SwiftUI

struct PerguntaSolo: View {
    @State public var Questao: perguntas
    @State private var certo: Bool = false
    @State private var falso: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.black, .darkblueGradient], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            Rectangle()
                .foregroundColor(.bgprofile)
                .frame(width: 340,height: 250)
            // .offset(y: 15)
            // .padding(.bottom, 400)
                .cornerRadius(50)
                .overlay(
                    VStack(spacing: 30){
                        Button(Questao.Alternativa1){
                            if (Questao.Resposta == 1){
                                certo = true
                            } else {
                                falso = true
                            }
                        }
                        .frame(width:250, height: .infinity )
                            
                            .background(){
                                Color(.brown)
                            }
                            .cornerRadius(10)
                        .alert(isPresented:$certo) {
                            Alert(title: Text("ACERTOU"), message: Text("Você ta ficando bom nisso, continue assim!"), dismissButton: .default(Text("fechar")))
                        }
                        
                    
                        Button(Questao.Alternativa2){
                            if (Questao.Resposta == 2){
                                certo = true
                            } else {
                                falso = true
                            }
                        }
                        .frame(width:250, height: .infinity )
                            
                            .background(){
                                Color(.brown)
                            }
                            .cornerRadius(10)
                        .alert(isPresented:$certo) {
                            Alert(title: Text("ACERTOU"), message: Text("Você ta ficando bom nisso, continue assim!"), dismissButton: .default(Text("fechar")))
                        }
                        .alert(isPresented: $falso) {
                            Alert(title: Text("ERROU!"), message: Text("Treine mais, você consegue!"), dismissButton: .default(Text("fechar")))
                        }
                    
                        Button(Questao.Alternativa3){
                            if (Questao.Resposta == 3){
                                certo = true
                            } else {
                                falso = true
                            }
                        }
                        .frame(width:250, height: .infinity )
                            
                            .background(){
                                Color(.brown)
                            }
                            .cornerRadius(10)
                        .alert(isPresented:$certo) {
                            Alert(title: Text("ACERTOU"), message: Text("Você ta ficando bom nisso, continue assim!"), dismissButton: .default(Text("fechar")))
                        }
                        .alert(isPresented: $falso) {
                            Alert(title: Text("ERROU!"), message: Text("Treine mais, você consegue!"), dismissButton: .default(Text("fechar")))
                        }
                    
                        Button(Questao.Alternativa4){
                            if (Questao.Resposta == 4){
                                certo = true
                            } else {
                                falso = true
                            }
                        }
                        .frame(width:250, height: .infinity )
                            
                            .background(){
                                Color(.brown)
                            }
                            .cornerRadius(10)
                        .alert(isPresented:$certo) {
                            Alert(title: Text("ACERTOU"), message: Text("Você ta ficando bom nisso, continue assim!"), dismissButton: .default(Text("fechar")))
                        }
                        .alert(isPresented: $falso) {
                            Alert(title: Text("ERROU!"), message: Text("Treine mais, você consegue!"), dismissButton: .default(Text("fechar")))
                        }
                        
                        
                        
                }
                    
//                .alert(isPresented:$certo) {
//                    Alert(title: Text("ACERTOU"), message: Text("Você ta ficando bom nisso, continue assim!"), dismissButton: .default(Text("fechar")))
//                }
//                .alert(isPresented: $falso) {
//                    Alert(title: Text("ERROU!"), message: Text("Treine mais, você consegue!"), dismissButton: .default(Text("fechar")))
//                }
                    
                )
            
            VStack{
                
                Text(Questao.Questao)
                    .font(.title)
                    .frame(width: .infinity, height: .infinity) //Se a pergunta for grande, retir esse padding
                    .padding()
               Spacer()
            }
            
        }
        //.frame(width:380, height: 700)
 
        .foregroundColor(.white)
        
        
    }
}

#Preview {
    PerguntaSolo(Questao: perguntas(idioma: "testea", Questao: "testeqaksasaksakslaslsalska", Alternativa1: "teste1", Alternativa2: "teste2", Alternativa3: "teste3", Alternativa4: "teste4", Resposta: 0))
}
