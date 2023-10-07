//
//  AreaChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 5.10.2023.
//

import SwiftUI
import Charts

struct AreaChartView: View {
    
    @State private var viewModel: AreaChartViewModel = .init()
    
    var body: some View {
        VStack {
            Chart(viewModel.permits) { permit in
                AreaMark(x: .value("Date", permit.date),
                         y: .value("Amount", permit.numberOfPermits))
                .foregroundStyle(by: .value("Sale Item", permit.region))
                
            }
            .frame(height: 400)
        }
        .padding()
    }
}

#Preview {
    AreaChartView()
}

