//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
              
                    .font(.system(size: 45))
                    .bold()
                    .fontWeight(.black)
                Spacer()
                Button {
            
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                    
            }//hstack ending
            .padding()
            Spacer()
        }//vstack ending
        
    }//end of body
}//end of struct

#Preview {
    ContentView()
}
