//
//  SectorViewModel.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 19.02.2024.
//

import Foundation
import SwiftUI

@Observable final class SectorChartViewModel {
    
    @ObservationIgnored
    var permits: [BuildingPermit] = [
        .init(year: 1991, numberOfPermits: 308.4, region: "South"),
        .init(year: 1991, numberOfPermits: 185.2, region: "West"),
        .init(year: 1991, numberOfPermits: 91.8 , region: "Northeast"),
        .init(year: 1991, numberOfPermits: 168.1, region: "Midwest")
    ]
}
