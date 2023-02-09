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
    @State var alertTitle: String = ""
    @State var alertCheck: Bool = false


    
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
            .tint(Color.red)
            .alert(isPresented: $alertCheck , content:getAlert)
    }
    
    //func addition
func addition(){
    
    if textFiledValidation() {
        listViewModel.addToItems(activites: textFiledText)
        presentationModel.wrappedValue.dismiss()
    }
}
    
    //empty textfiled validation
    func textFiledValidation() -> Bool {
        if textFiledText.count < 3 {
            alertTitle = "your new activity must be more than 3 charactars !".capitalized
            alertCheck.toggle()
            return false
        }
        return true
    }
    
        //func Alert Title
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
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

