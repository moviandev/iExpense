//
//  ContentView.swift
//  iExpense
//
//  Created by Matheus Viana on 09/02/23.
//

import SwiftUI

struct Amount: View {
    let amount: Double
    
    var body: some View {
        Text(amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            .foregroundColor(defineColor(amount: amount))
    }
    
    func defineColor(amount: Double) -> Color {
        if amount <= 10 {
            return .green
        } else if amount > 10 && amount <= 100 {
            return .orange
        } else {
            return .red
        }
    }
}

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        
                        Spacer()
                        
                        Amount(amount: item.amount)
                    }
                }
                .onDelete(perform: removeItem)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItem(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
