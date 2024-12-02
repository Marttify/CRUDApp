//
//  ContentView.swift
//  CRUDApp
//
//  Created by Martin Aguilar on 01/12/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var taskVM = TaskViewModel()
    @State private var newTaskTitle: String = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Escribe la nueva tarea", text: $newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        if !newTaskTitle.isEmpty {
                            taskVM.addTask(title: newTaskTitle)
                            newTaskTitle = ""
                        }
                    }) {
                        Image(systemName: "plus")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                }
                .padding()
                List {
                    ForEach(taskVM.tasks) { task in
                        HStack {
                            Text(task.title)
                            Spacer()
                            Button(action: {
                                taskVM.deleteTask(id: task.id)
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                .navigationTitle("CRUD de Tareas")
            }
        }
    }
}
