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
            Chart {
                ForEach(viewModel.permits) { permit in
                    AreaMark(x: .value("Date", permit.date),
                             y: .value("Number of Permits", permit.numberOfPermits),
                             stacking: viewModel.stacking
                    )
                    .foregroundStyle(by: .value("Region", permit.region))
                    
                }
            }
            .frame(height: 400)
            .onTapGesture {
                withAnimation {
                    viewModel.stacking = if viewModel.stacking == .normalized {
                        .center
                    } else if viewModel.stacking == .center {
                        .standard
                    } else if viewModel.stacking == .standard {
                        .unstacked
                    } else {
                        .normalized
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    AreaChartView()
}

