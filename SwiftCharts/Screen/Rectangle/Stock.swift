//
//  Stock.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 9.10.2023.
//

import Foundation

struct Stock: Identifiable {
    let id: UUID = UUID()
    let name: String
    let date: String
    let openPrice: Double
    let highPrice: Double
    let lowPrice: Double
    let closePrice: Double
}
