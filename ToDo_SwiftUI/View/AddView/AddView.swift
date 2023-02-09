//
//  AddView.swift
//  ToDo_SwiftUI
//
//  Created by Abdelaziz Reda on 08/02/2023.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationModel
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFiledText: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type Your Activity ....", text: $textFiledText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(white: 0.9))
                    .cornerRadius(15)
                
                //btn
                Button {addition() } label: {
                    Text("Save")
                }
                .frame(maxWidth: .infinity , minHeight: 50)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(15)

            }
            .padding(16)
        }
            .navigationTitle("Add Your Activity !")
    }
    
    //func addition
func addition(){
    listViewModel.addToItems(activites: textFiledText)
    presentationModel.wrappedValue.dismiss()
}
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
