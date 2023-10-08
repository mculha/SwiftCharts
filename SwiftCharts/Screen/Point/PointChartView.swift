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
                ForEach(viewModel.permits) { permit in
                    PointMark(x: .value("Year", permit.date),
                             y: .value("Number of Permits", permit.numberOfPermits))
                    .foregroundStyle(by: .value("Region", permit.region))
                    .symbol(by: .value("Region", permit.region))
                }
            }
            .frame(height: 400)
            .padding()
        }
    }
}

#Preview {
    PointChartView()
}
