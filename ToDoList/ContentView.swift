//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var ShowNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
              
                    .font(.system(size: 45))
                    .bold()
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation{
                        ShowNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
            }//hstack ending
            .padding()
            Spacer()
            List{
                ForEach (toDos) { toDoItem in
                    //Text(toDoItem.title)
                    
                    if toDoItem.isImportant {
                        Text("‼️" + toDoItem.title)
                    }else{
                    Text(toDoItem.title)
                    }
                }//closoing for each
                .onDelete(perform: deleteToDo)
            }//clsing list
            .listStyle(.plain)
        }//vstack ending
        if ShowNewTask{
            NewToDoView(showNewTask: $ShowNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }//end of if
    }//end of body
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets{
            let toDoItemToDelete = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
}//end of struct

#Preview {
    ContentView()
}
