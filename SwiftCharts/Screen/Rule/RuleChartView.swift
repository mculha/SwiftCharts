//
//  RuleChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 5.10.2023.
//

import SwiftUI
import Charts

struct RuleChartView: View {
    
    private let viewModel: RuleChartViewModel = .init()
    
    var body: some View {
        VStack {
            Chart {
                ForEach(viewModel.permits) { permit in
                    LineMark(x: .value("Year", permit.date),
                             y: .value("Number of Permits", permit.numberOfPermits))
                    .foregroundStyle(by: .value("Region", permit.region))
                }
                
                RuleMark(y: .value("Average", viewModel.averageNumberOfPermits))
                    .foregroundStyle(.red)
            }
            .frame(height: 400)
            .padding()
        }
    }
}

#Preview {
    RuleChartView()
}
