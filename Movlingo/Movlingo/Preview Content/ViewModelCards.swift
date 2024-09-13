//
//  ViewModelCards.swift
//  Movlingo
//
//  Created by Turma02-25 on 12/09/24.
//

import Foundation


class ViewModelCards : ObservableObject{
    
    @Published var chars : [Cards] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "http://192.168.128.22:1880/cget")!){data, _,error
            in
            do{
                self.chars = try JSONDecoder().decode([Cards].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
