//
//  SelectGener.swift
//  Movlingo
//
//  Created by Turma02-25 on 09/09/24.
//

import SwiftUI

struct SelectGener: View {
    @Binding var selectedGenre: Genero?
    var body: some View {
        NavigationView {
            List(Genero.allCases) { genre in
                Button(action: {
                    selectedGenre = genre
                }) {
                    HStack {
                        Text(genre.rawValue)
                        Spacer()
                        if selectedGenre == genre {
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
            .navigationTitle("Selecionar Gênero")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Fechar") {
                    }
                }
            }
        }.background(.darkblueBg)
    }
}
