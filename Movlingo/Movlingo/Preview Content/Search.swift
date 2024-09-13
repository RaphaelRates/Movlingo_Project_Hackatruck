//
//  Search.swift
//  Movlingo
//
//  Created by Turma02-25 on 04/09/24.
//

import SwiftUI

struct Search: View {
    @State var nome: String = ""
    @State var selectedGenre: String = ""
    @StateObject var viewModel = ViewModel()
    @State var resultsDefinition: [Filme] = []
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Label("", systemImage:"magnifyingglass")
                        .foregroundColor(.textSearch)
                    
                    TextField("Search",text: $nome)
                }
                .frame(width: 300, height: 40)
                .padding(.leading,8)
                .background(.bgSearch)
                .cornerRadius(20)
                .padding(.top,20)
                .foregroundColor(.white)
                ScrollView(.horizontal){
                    HStack(spacing: 30){
                        ForEach(Lingua.allCases) { result in
                            Button("\(result.rawValue)"){
                                test(genero: result.rawValue)
                            }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        ForEach(Genero.allCases) { result in
                            Button("\(result.rawValue)"){
                                test(genero: result.rawValue)
                            }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                
                if searchResults.isEmpty{
                        Text("Not Found")
                        .padding(.top,200)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                }
                ScrollView{
                    VStack{
                        ForEach(searchResults, id: \.self){ filme in
                            VStack{
                                NavigationLink(destination: SingleFilme(filme_single: filme)){
                                    HStack{
                                        AsyncImage(url: URL(string: "\(filme.Url)")){ image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                                .foregroundColor(.white)
                                        }
                                        .frame(width: 130,height: 70)
                                        .cornerRadius(10)
                                        VStack{
                                            Text("\(filme.nome)")
                                                .font(.system(size: 15))
                                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                
                                        }
                                        .foregroundColor(.white)
                                        Spacer()
                                    }
                                    .padding(.vertical)
                                    .padding(.horizontal,5)
                                    .background(.singleMovieSearch)
                                    .cornerRadius(10)
                                }
                                
                                
                            }
                            .frame(width: 340,height: 80)
                            .cornerRadius(10)
                            .padding(.vertical,5)
                        }

                    }.onAppear(){
                        viewModel.fetch()
                    }
               }
                .frame(width: 400,height: .infinity)
                .padding(.bottom,50)
            }
            .background(){
                LinearGradient(colors: [.black, .darkblueGradient], startPoint: .top, endPoint: .bottom)
            }    .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)

        }
    }
    var searchResults: [Filme] {
            return viewModel.chars.filter { filme in
                let matchesNome = nome.isEmpty || filme.nome.contains(nome)
                let matchesGenero = selectedGenre.isEmpty || filme.gênero.contains(selectedGenre)
                let matchesLanguages = selectedGenre.isEmpty || filme.idioma.contains(selectedGenre)
                return matchesNome && (matchesGenero || matchesLanguages)
        }
    }
    func test(genero: String){
            let aux = selectedGenre
            if aux == selectedGenre{
                selectedGenre = ""
            }
            selectedGenre = genero;
    }
}

#Preview {
    Search()
}
