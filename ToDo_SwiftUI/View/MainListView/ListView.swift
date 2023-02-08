//
//  ListView.swift
//  ToDo_SwiftUI
//
//  Created by Abdelaziz Reda on 08/02/2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [ItemModel(id: "2", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true),
                                     ItemModel(id: "1", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true),
                                     ItemModel(id: "3", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: false),
                                     ItemModel(id: "6", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true)]

    
    var body: some View {
        //table
        List{
            ForEach(items) { item in
                ListRowView(items: item)
            }
            //delete item
            .onDelete(perform: deleteItem)
            .onMove(perform:moveItem )
        }
        .listStyle(PlainListStyle())
        //navigationConfugiers
        .navigationTitle("Your List !")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("add", destination: AddView()))
    }
    
    
    
        //delete item func
    func deleteItem(indexSet:IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    //shifting item and remove by edite
    func moveItem(from: IndexSet , to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
