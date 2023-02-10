//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Matheus Viana on 10/02/23.
//

import Foundation

struct ExpenseItem {
    let id = UUID()
    let name: String
    let tyoe: String
    let amount: Double
}
