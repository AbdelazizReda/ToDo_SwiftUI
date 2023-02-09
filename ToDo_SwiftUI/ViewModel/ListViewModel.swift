//
//  ListViewModel.swift
//  ToDo_SwiftUI
//
//  Created by Abdelaziz Reda on 09/02/2023.
//

import Foundation


class ListViewModel : ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    func getItems(){
        
        let newItems = [ItemModel(id: "2", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true),
                        ItemModel(id: "1", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true),
                        ItemModel(id: "3", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: false),
                        ItemModel(id: "6", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true)]
        
        items.append(contentsOf: newItems)
        
        
    }
    
    //delete item func
func deleteItem(indexSet:IndexSet){
    items.remove(atOffsets: indexSet)
}

//shifting item and remove by edite
func moveItem(from: IndexSet , to: Int){
    items.move(fromOffsets: from, toOffset: to)
}
    
        //add to list
    func addToItems(activites:String){
        
        let newItemAdded = ItemModel(id: "8", activitey: activites, isCompleted: true)
        items.append(newItemAdded)
        
    }

    
    
    
    
    
}
