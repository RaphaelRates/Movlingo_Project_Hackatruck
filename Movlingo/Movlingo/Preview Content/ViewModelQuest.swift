//
//  ViewModelQuest.swift
//  Movlingo
//
//  Created by Turma02-25 on 11/09/24.
//

import Foundation

import SwiftUI
class ViewModelQuest : ObservableObject{
    
    @Published var chars : [perguntas] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "http://192.168.128.22:1880/qget")!){data, _,error
            in
            do{
                self.chars = try JSONDecoder().decode([perguntas].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
