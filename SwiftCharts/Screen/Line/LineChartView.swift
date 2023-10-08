//
//  LineChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 5.10.2023.
//

import SwiftUI
import Charts

struct LineChartView: View {
    @State private var viewModel: LineChartViewModel = .init()

    
    var body: some View {
        VStack {
            Chart(viewModel.permits) { permit in
                LineMark(x: .value("Year", permit.date),
                         y: .value("Number of Permits", permit.numberOfPermits))
                .foregroundStyle(by: .value("Region", permit.region))
            }
            .frame(height: 400)
            .padding()
        }
    }
}

#Preview {
    LineChartView()
}
