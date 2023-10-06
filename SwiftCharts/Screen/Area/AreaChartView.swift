//
//  AreaChartView.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 5.10.2023.
//

import SwiftUI
import Charts

struct AreaChartView: View {
    let sales: [MusicIndustry] = [
        .init(revenue: 3, year: 1973, industry: "8-Track"),
        .init(revenue: 4, year: 1978, industry: "8-Track"),
        .init(revenue: 0, year: 1983, industry: "8-Track"),
        .init(revenue: 1, year: 1973, industry: "Cassette"),
        .init(revenue: 2, year: 1978, industry: "Cassette"),
        .init(revenue: 3, year: 1983, industry: "Cassette"),
        .init(revenue: 7, year: 1988, industry: "Cassette"),
        .init(revenue: 5, year: 1993, industry: "Cassette"),
        .init(revenue: 3, year: 1998, industry: "Cassette"),
        .init(revenue: 0, year: 2003, industry: "Cassette"),
        .init(revenue: 0, year: 1983, industry: "CD"),
        .init(revenue: 2, year: 1988, industry: "CD"),
        .init(revenue: 8, year: 1993, industry: "CD"),
        .init(revenue: 15, year: 1998, industry: "CD"),
        .init(revenue: 18, year: 2003, industry: "CD"),
        .init(revenue: 12, year: 2008, industry: "CD"),
        .init(revenue: 4, year: 2013, industry: "CD"),
        .init(revenue: 0, year: 2018, industry: "CD"),
        .init(revenue: 0, year: 2003, industry: "DOWNLOAD"),
        .init(revenue: 2, year: 2008, industry: "DOWNLOAD"),
        .init(revenue: 3, year: 2013, industry: "DOWNLOAD"),
        .init(revenue: 2, year: 2018, industry: "DOWNLOAD"),
        .init(revenue: 0, year: 2003, industry: "STREAMING"),
        .init(revenue: 1, year: 2008, industry: "STREAMING"),
        .init(revenue: 2, year: 2013, industry: "STREAMING"),
        .init(revenue: 7, year: 2018, industry: "STREAMING"),
        .init(revenue: 8, year: 1973, industry: "VINYL"),
        .init(revenue: 10, year: 1978, industry: "VINYL"),
        .init(revenue: 7, year: 1983, industry: "VINYL"),
        .init(revenue: 2, year: 1988, industry: "VINYL"),
        .init(revenue: 1, year: 1993, industry: "VINYL"),
        .init(revenue: 1, year: 1998, industry: "VINYL"),
        .init(revenue: 1, year: 2003, industry: "VINYL"),
        .init(revenue: 1, year: 2008, industry: "VINYL"),
        .init(revenue: 1, year: 2013, industry: "VINYL"),
        .init(revenue: 1, year: 1988, industry: "OTHER"),
        .init(revenue: 1, year: 1993, industry: "OTHER"),
        .init(revenue: 1, year: 1998, industry: "OTHER"),
        .init(revenue: 1, year: 2003, industry: "OTHER"),
        .init(revenue: 2, year: 2008, industry: "OTHER")
    ]
    
    var body: some View {
        VStack {
            Chart(sales) { sale in
                AreaMark(x: .value("Date", sale.date),
                         y: .value("Revenue", sale.revenue))
                .foregroundStyle(by: .value("Sale Item", sale.industry))
                
            }
            .frame(height: 400)
        }
        .padding()
    }
}

#Preview {
    AreaChartView()
}

struct MusicIndustry: Identifiable {
    let id: UUID = UUID()
    let revenue: Int
    let date: Date
    let industry: String
    private let calendar: Calendar = Calendar.autoupdatingCurrent
    
    init(revenue: Int, year: Int, industry: String) {
        self.revenue = revenue
        self.date = calendar.date(from: DateComponents(year: year))!
        self.industry = industry
    }
}
