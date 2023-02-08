//
//  ListRowView.swift
//  ToDo_SwiftUI
//
//  Created by Abdelaziz Reda on 08/02/2023.
//

import SwiftUI

struct ListRowView: View {
    var items:ItemModel
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            Image(items.isCompleted ? "check" : "false")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .cornerRadius(50)
                    .foregroundColor(Color.blue)
                    .font(.largeTitle)
            Text(items.activitey)
            
                
            }
            .padding()
            .background(Color.cyan.opacity(0.8))
            .cornerRadius(15)
        }
    
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(id: "2", activitey: "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", isCompleted: true)
    static var item2 = ItemModel(id: "3", activitey: "t is a long established fact that a reader will be distracted", isCompleted: false)
    static var item3 = ItemModel(id: "4", activitey: "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", isCompleted: true)
    static var item4 = ItemModel(id: "1", activitey: "t is a long established fact that a reader will be ", isCompleted: false)

    
    static var previews: some View {
        Group{
            ListRowView(items: item1)
            ListRowView(items: item2)
            ListRowView(items: item4)

        }
        .previewLayout(.sizeThatFits)

    }
}
