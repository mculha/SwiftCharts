//
//  BarChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 5.10.2023.
//

import SwiftUI
import Charts

struct BarChartView: View {
    
    @State private var viewModel: BarChartViewModel = .init()
    
    var body: some View {
        VStack {
            Chart {
                ForEach(Array(viewModel.numberOfPermitsByRegion), id: \.key) { region, numberOfPermits in
                    BarMark(x: .value("Region", region),
                            y: .value("Total Number of Permits", numberOfPermits))
                }
            }
            .frame(height: 400)
            .padding()
        }
    }
}

#Preview {
    BarChartView()
}
