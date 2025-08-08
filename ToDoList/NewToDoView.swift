//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Task Title:")
                .font(.title)
            .fontWeight(.bold)
            TextField("Enter the Task Discription...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it Important?")
                    .font(.headline)
                    .fontWeight(.medium)
                
            }
            Button {
                
            } label: {
                Text("Save")
                    .fontWeight(.bold)
            }
        }//end of Vstack
        .padding()
    }//end of body
}//end of struct

#Preview {
    NewToDoView()
}
