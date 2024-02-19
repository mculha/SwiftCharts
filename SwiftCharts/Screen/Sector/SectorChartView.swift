//
//  SectorChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 19.02.2024.
//

import SwiftUI
import Charts

struct SectorChartView: View {
    
    @State private var viewModel: SectorChartViewModel = .init()
    
    var body: some View {
        VStack {
            Chart(viewModel.permits, id: \.id) { permit in
                SectorMark(angle: .value("Value", permit.numberOfPermits),
                           innerRadius: .ratio(0.0065),
                           outerRadius: .inset(10),
                           angularInset: 0.75
                )
                .cornerRadius(4)
                .foregroundStyle(by: .value("Region", permit.region))
                .shadow(radius: 0.1)
                .annotation(position: .overlay) {
                    Text(permit.region)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                }
            }
            .frame(height: 400)
        }
        .padding()
    }
}

#Preview {
    SectorChartView()
}
