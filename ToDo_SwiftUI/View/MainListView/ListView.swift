//
//  ListView.swift
//  ToDo_SwiftUI
//
//  Created by Abdelaziz Reda on 08/02/2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
//
//    @State var items: [ItemModel] = [ItemModel(id: "2", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true),
//                                     ItemModel(id: "1", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true),
//                                     ItemModel(id: "3", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: false),
//                                     ItemModel(id: "6", activitey: "orem Ipsum is simply dummy text of the printing and typesetting industry.", isCompleted: true)]

    
    var body: some View {
        //table
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(items: item)
                    .onTapGesture {
                        withAnimation {
                            print("hello")
                        }
                            
                    
                    }
            }
            //delete item
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform:listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        //navigationConfugiers
        .navigationTitle("Your List")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
    
    
    

}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}
