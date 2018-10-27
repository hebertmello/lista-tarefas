//
//  TarefaUserDefaults.swift
//  ListaTarefas
//
//  Created by Hebert Falcão on 28/04/2018.
//  Copyright © 2018 hebertfalcao. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave: String = "listaTarefa"
    
    var tarefas: [String] = []
    
    func salvar(tarefa: String) {
        tarefas = listar()
        tarefas.append(tarefa)
        
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> [String] {
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! [String]
        } else {
            return []
        }
    }
    
    func remover(indice: Int) {
        tarefas = listar()
        tarefas.remove(at: indice)
        
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
}
