//
//  ContentView.swift
//  streaksTracker
//
//  Created by Andrea Chen on 2024/3/29.
//

import SwiftUI

struct ContentView: View {
    @State var selectedDate: Date = Date()
        var body: some View {
            VStack() {
                Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                    .font(.system(size: 28))
                    .bold()
                    .foregroundColor(Color.accentColor)
                    .padding()
                    .animation(.spring(), value: selectedDate)
                    .frame(width: 500)
                Divider().frame(height: 1)
                DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                    .padding(.horizontal)
                    .datePickerStyle(.graphical)
                Divider()
            }
            .padding(.vertical, 100)
        }
}

#Preview {
    ContentView()
}
