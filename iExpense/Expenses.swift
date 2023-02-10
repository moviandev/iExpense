//
//  Expenses.swift
//  iExpense
//
//  Created by Matheus Viana on 10/02/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
