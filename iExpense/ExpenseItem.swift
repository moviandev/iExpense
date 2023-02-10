//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Matheus Viana on 10/02/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let tyoe: String
    let amount: Double
}
