//
//  TaskViewModel.swift
//  CRUDApp
//
//  Created by Martin Aguilar on 01/12/2024.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []

    // Create
    func addTask(title: String) {
        let newTask = Task(title: title, isCompleted: false)
        tasks.append(newTask)
    }

    // Delete
    func deleteTask(id: UUID) {
        tasks.removeAll { $0.id == id }
    }
}
 
