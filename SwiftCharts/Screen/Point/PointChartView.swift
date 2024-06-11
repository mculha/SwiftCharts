//
//  PointChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 5.10.2023.
//

import SwiftUI
import Charts

struct PointChartView: View {
    
    @State private var viewModel: PointChartViewModel = .init()
    
    var body: some View {
        VStack {
            Chart {
                PointPlot(viewModel.permits, x: .value("Year", \.date), y: .value("Number of Permits", \.numberOfPermits))
                    .foregroundStyle(by: .value("Region", \.region))
//                    .symbolSize(by: .value("Number of Permits", \.numberOfPermits))
                    .symbol(by: .value("Region", \.region))

            }
            .frame(height: 600)
            .padding()
        }
    }
}

#Preview {
    PointChartView()
}
