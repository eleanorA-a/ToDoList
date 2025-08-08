//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowNewTask = false
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
              
                    .font(.system(size: 45))
                    .bold()
                    .fontWeight(.black)
                Spacer()
                Button {
            ShowNewTask = true
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                    
            }//hstack ending
            .padding()
            Spacer()
        }//vstack ending
        if ShowNewTask{
           NewToDoView()
        }//end of if
    }//end of body
}//end of struct

#Preview {
    ContentView()
}
