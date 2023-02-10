//
//  ContentView.swift
//  iExpense
//
//  Created by Matheus Viana on 09/02/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("tapCount") private var tapCount = 0 //bad ideia
    
    var body: some View {
        Button("Tap count \(tapCount)") {
            tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
