//
//  BuildingPermit.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 7.10.2023.
//

import Foundation

struct BuildingPermit: Identifiable {
    let id: UUID = UUID()
    let numberOfPermits: Double
    let date: Date
    let region: String
    private let calendar: Calendar = Calendar.autoupdatingCurrent
    
    init(year: Int, numberOfPermits: Double, region: String) {
        self.numberOfPermits = numberOfPermits
        self.date = calendar.date(from: DateComponents(year: year))!
        self.region = region
    }
}
