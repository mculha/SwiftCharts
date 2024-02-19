//
//  ContentView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 4.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                NavigationLink(destination: SectorChartView()) { ActionButton(title: "Sector", color: .purple) }
                NavigationLink(destination: AreaChartView()) { ActionButton(title: "Area", color: .cyan) }
                NavigationLink(destination: LineChartView()) { ActionButton(title: "Line", color: .indigo) }
                NavigationLink(destination: PointChartView()) { ActionButton(title: "Point", color: .teal) }
                NavigationLink(destination: RectangleChartView()) { ActionButton(title: "Rectangle", color: .purple) }
                NavigationLink(destination: RuleChartView()) { ActionButton(title: "Rule", color: .green) }
                NavigationLink(destination: BarChartView()) { ActionButton(title: "Bar", color: .orange) }
            }
            .padding(30)
        }
        
    }
}

#Preview {
    ContentView()
}

struct ActionButton: View {
    let title: String
    let color: Color
    
    var body: some View {
        Text(title)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity)
            .padding(15)
            .foregroundStyle(.white)
            .background(color)
            .clipShape(.rect(cornerRadius: 15))
    }
}
