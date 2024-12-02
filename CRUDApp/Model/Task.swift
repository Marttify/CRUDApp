//
//  Task.swift
//  CRUDApp
//
//  Created by Martin Aguilar on 01/12/2024.
//

import Foundation

struct Task: Identifiable {
    let id: UUID = UUID()
    var title: String
    var isCompleted: Bool
}
