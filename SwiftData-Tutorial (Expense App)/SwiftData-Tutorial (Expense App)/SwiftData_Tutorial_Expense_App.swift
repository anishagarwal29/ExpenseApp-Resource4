//
//  SwiftData_Tutorial__Expense_App_App.swift
//  SwiftData-Tutorial (Expense App)
//
//  Created by Anish Agarwal on 11/10/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftData_Tutorial_Expense_App: App {
    
    let container: ModelContainer = {
        let schema = Schema([Expense.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        .modelContainer(container)
        .modelContainer(for: Expense.self)
    }
}
