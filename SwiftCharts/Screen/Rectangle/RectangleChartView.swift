//
//  RectangleChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 5.10.2023.
//

import SwiftUI
import Charts

struct RectangleChartView: View {
    
    @State private var viewModel: RectangleChartViewModel = .init()
    
    var body: some View {
        VStack {
            Chart {
                ForEach(viewModel.stocks) { stock in
                    RectangleMark(x: .value("Date", stock.date),
                                  yStart: .value("Low", stock.lowPrice),
                                  yEnd: .value("High", stock.highPrice),
                                  width: 3)
                    
                    RectangleMark(x: .value("Date", stock.date),
                                  yStart: .value("Open", stock.openPrice),
                                  yEnd: .value("Close", stock.closePrice),
                                  width: 10)
                    .foregroundStyle(.orange.gradient)
                }
            }
            .frame(height: 400)
            .padding()
        }
    }
}

#Preview {
    RectangleChartView()
}
