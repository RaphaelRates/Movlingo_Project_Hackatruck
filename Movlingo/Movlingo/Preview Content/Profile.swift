//
//  Profile.swift
//  Movlingo
//
//  Created by Turma02-25 on 04/09/24.
//

import SwiftUI

struct Profile: View {
    @StateObject var viewModel = ViewModel()
    @State private var rotationAngle: Double = 0
    @State private var isRotated = false
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                ZStack{
                    Rectangle()
                        .foregroundColor(.bgprofile)
                        .frame(width: 400,height: 300, alignment: .top)
                        .cornerRadius(100)
                    VStack{
                        Image(.dino)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .onTapGesture {
                                    
                                            withAnimation(.easeInOut(duration: 1.0)) {
                                                self.rotationAngle += 360
                                            }
                                        }
                            .rotation3DEffect(
                                            .degrees(rotationAngle), 
                                            axis: (x: 0, y: 1, z: 0)
                                        )
                                        .onAppear {
                                          
                                            withAnimation(.easeInOut(duration: 1.0)) {
                                                self.rotationAngle = 360
                                            }
                                        }
                        Text("Usuario")
                            .foregroundStyle(.white)
                        HStack{
                            VStack{
                                Text("\(viewModel.chars.filter{$0.favorito}.count)")
                                    .font(.title)
                                Text("favoritos")
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal, 50)
                            VStack{
                                Text("\(viewModel.chars.filter{$0.assistirMt}.count)")
                                    .font(.title)
                                Text("ver depois")
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal, 50)
                        }.padding().cornerRadius(100)
                    }
                }
                VStack{
                    Text("Favoritos")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            ForEach(viewModel.chars.filter{$0.favorito}, id: \.self){filme in
                                NavigationLink(destination: SingleFilme(filme_single: filme)){
                                    VStack{
                                        ZStack{
                                            AsyncImage(url: URL(string: "\(filme.Url)")){ image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                                    .frame(width: 100, height: 150)
                                                    .background()
                                                    .foregroundColor(.white)
                                            }
                                            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                            .frame(width: 100,height: 150)
                                            .cornerRadius(10)
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }.onAppear(){
                        viewModel.fetch()
                    }
                    
                    Text("Ver Depois")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            ForEach(viewModel.chars.filter{$0.assistirMt}, id: \.self){filme in
                                NavigationLink(destination: SingleFilme(filme_single: filme)){
                                    VStack{
                                        ZStack{
                                            AsyncImage(url: URL(string: "\(filme.Url)")){ image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                                    .frame(width: 100, height: 150)
                                                    .background()
                                                    .foregroundColor(.white)
                                            }
                                            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                            .frame(width: 100,height: 150)
                                            .cornerRadius(10)
                                           
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding(.bottom,50)
            .background(){
                LinearGradient(colors: [.black, .darkblueGradient], startPoint: .top, endPoint: .bottom)
            }.ignoresSafeArea()
        }
            
    }
}

#Preview {
    Profile()
}
