//
//  BarChartViewModel.swift
//  SwiftCharts
//
//  Created by Melih Çulha on 9.10.2023.
//

import Foundation

@Observable final class BarChartViewModel {
    
    
    var numberOfPermitsByRegion: [String: Double] {
        var dict: [String: Double] = .init()
        for permit in permits {
            if dict[permit.region] == nil {
                dict[permit.region] = 0
            }
            dict[permit.region]! += permit.numberOfPermits
        }
        
        return dict
    }
    
    @ObservationIgnored
    let permits: [BuildingPermit] = [
        .init(year: 1991, numberOfPermits: 308.4, region: "South"),
        .init(year: 1992, numberOfPermits: 382.2, region: "South"),
        .init(year: 1993, numberOfPermits: 419.5, region: "South"),
        .init(year: 1994, numberOfPermits: 430.6, region: "South"),
        .init(year: 1995, numberOfPermits: 430.3, region: "South"),
        .init(year: 1996, numberOfPermits: 468.5, region: "South"),
        .init(year: 1997, numberOfPermits: 464.2, region: "South"),
        .init(year: 1998, numberOfPermits: 521.9, region: "South"),
        .init(year: 1999, numberOfPermits: 550.4, region: "South"),
        .init(year: 2000, numberOfPermits: 529.7, region: "South"),
        .init(year: 2001, numberOfPermits: 556.9, region: "South"),
        .init(year: 2002, numberOfPermits: 606.5, region: "South"),
        .init(year: 2003, numberOfPermits: 670.1, region: "South"),
        .init(year: 2004, numberOfPermits: 756.1, region: "South"),
        .init(year: 2005, numberOfPermits: 826.8, region: "South"),
        .init(year: 2006, numberOfPermits: 726.2, region: "South"),
        .init(year: 2007, numberOfPermits: 507.5, region: "South"),
        .init(year: 2008, numberOfPermits: 304.3, region: "South"),
        .init(year: 2009, numberOfPermits: 231.8, region: "South"),
        .init(year: 2010, numberOfPermits: 232.3, region: "South"),
        .init(year: 2011, numberOfPermits: 227.1, region: "South"),
        .init(year: 2012, numberOfPermits: 276.0, region: "South"),
        .init(year: 2013, numberOfPermits: 330.0, region: "South"),
        .init(year: 2014, numberOfPermits: 347.7, region: "South"),
        .init(year: 2015, numberOfPermits: 378.2, region: "South"),
        .init(year: 2016, numberOfPermits: 406.0, region: "South"),
        .init(year: 1991, numberOfPermits: 185.2, region: "West"),
        .init(year: 1992, numberOfPermits: 215.6, region: "West"),
        .init(year: 1993, numberOfPermits: 235.0, region: "West"),
        .init(year: 1994, numberOfPermits: 260.8, region: "West"),
        .init(year: 1995, numberOfPermits: 241.9, region: "West"),
        .init(year: 1996, numberOfPermits: 255.6, region: "West"),
        .init(year: 1997, numberOfPermits: 267.1, region: "West"),
        .init(year: 1998, numberOfPermits: 293.8, region: "West"),
        .init(year: 1999, numberOfPermits: 307.1, region: "West"),
        .init(year: 2000, numberOfPermits: 300.7, region: "West"),
        .init(year: 2001, numberOfPermits: 308.5, region: "West"),
        .init(year: 2002, numberOfPermits: 336.2, region: "West"),
        .init(year: 2003, numberOfPermits: 379.0, region: "West"),
        .init(year: 2004, numberOfPermits: 430.0, region: "West"),
        .init(year: 2005, numberOfPermits: 450.0, region: "West"),
        .init(year: 2006, numberOfPermits: 339.3, region: "West"),
        .init(year: 2007, numberOfPermits: 234.9, region: "West"),
        .init(year: 2008, numberOfPermits: 120.0, region: "West"),
        .init(year: 2009, numberOfPermits: 88.7 , region: "West"),
        .init(year: 2010, numberOfPermits: 90.6 , region: "West"),
        .init(year: 2011, numberOfPermits: 81.9 , region: "West"),
        .init(year: 2012, numberOfPermits: 111.2, region: "West"),
        .init(year: 2013, numberOfPermits: 136.3, region: "West"),
        .init(year: 2014, numberOfPermits: 137.1, region: "West"),
        .init(year: 2015, numberOfPermits: 160.7, region: "West"),
        .init(year: 2016, numberOfPermits: 178.1, region: "West"),
        .init(year: 1991, numberOfPermits: 91.8 , region: "Northeast"),
        .init(year: 1992, numberOfPermits: 108.5, region: "Northeast"),
        .init(year: 1993, numberOfPermits: 113.7, region: "Northeast"),
        .init(year: 1994, numberOfPermits: 114.9, region: "Northeast"),
        .init(year: 1995, numberOfPermits: 104.5, region: "Northeast"),
        .init(year: 1996, numberOfPermits: 108.8, region: "Northeast"),
        .init(year: 1997, numberOfPermits: 111.2, region: "Northeast"),
        .init(year: 1998, numberOfPermits: 124.1, region: "Northeast"),
        .init(year: 1999, numberOfPermits: 127.1, region: "Northeast"),
        .init(year: 2000, numberOfPermits: 122.3, region: "Northeast"),
        .init(year: 2001, numberOfPermits: 117.7, region: "Northeast"),
        .init(year: 2002, numberOfPermits: 126.6, region: "Northeast"),
        .init(year: 2003, numberOfPermits: 124.4, region: "Northeast"),
        .init(year: 2004, numberOfPermits: 131.8, region: "Northeast"),
        .init(year: 2005, numberOfPermits: 126.6, region: "Northeast"),
        .init(year: 2006, numberOfPermits: 103.4, region: "Northeast"),
        .init(year: 2007, numberOfPermits: 83.7 , region: "Northeast"),
        .init(year: 2008, numberOfPermits: 58.0 , region: "Northeast"),
        .init(year: 2009, numberOfPermits: 45.8 , region: "Northeast"),
        .init(year: 2010, numberOfPermits: 49.1 , region: "Northeast"),
        .init(year: 2011, numberOfPermits: 39.0 , region: "Northeast"),
        .init(year: 2012, numberOfPermits: 44.2 , region: "Northeast"),
        .init(year: 2013, numberOfPermits: 52.6 , region: "Northeast"),
        .init(year: 2014, numberOfPermits: 54.6 , region: "Northeast"),
        .init(year: 2015, numberOfPermits: 52.4 , region: "Northeast"),
        .init(year: 2016, numberOfPermits: 54.3 , region: "Northeast"),
        .init(year: 1991, numberOfPermits: 168.1, region: "Midwest"),
        .init(year: 1992, numberOfPermits: 204.4, region: "Midwest"),
        .init(year: 1993, numberOfPermits: 218.4, region: "Midwest"),
        .init(year: 1994, numberOfPermits: 228.3, region: "Midwest"),
        .init(year: 1995, numberOfPermits: 220.5, region: "Midwest"),
        .init(year: 1996, numberOfPermits: 236.6, region: "Midwest"),
        .init(year: 1997, numberOfPermits: 220.0, region: "Midwest"),
        .init(year: 1998, numberOfPermits: 247.8, region: "Midwest"),
        .init(year: 1999, numberOfPermits: 262.1, region: "Midwest"),
        .init(year: 2000, numberOfPermits: 245.4, region: "Midwest"),
        .init(year: 2001, numberOfPermits: 252.5, region: "Midwest"),
        .init(year: 2002, numberOfPermits: 263.4, region: "Midwest"),
        .init(year: 2003, numberOfPermits: 287.3, region: "Midwest"),
        .init(year: 2004, numberOfPermits: 295.5, region: "Midwest"),
        .init(year: 2005, numberOfPermits: 278.7, region: "Midwest"),
        .init(year: 2006, numberOfPermits: 209.3, region: "Midwest"),
        .init(year: 2007, numberOfPermits: 153.8, region: "Midwest"),
        .init(year: 2008, numberOfPermits: 93.2, region: "Midwest"),
        .init(year: 2009, numberOfPermits: 74.9, region: "Midwest"),
        .init(year: 2010, numberOfPermits: 75.4, region: "Midwest"),
        .init(year: 2011, numberOfPermits: 70.5, region: "Midwest"),
        .init(year: 2012, numberOfPermits: 87.3, region: "Midwest"),
        .init(year: 2013, numberOfPermits: 101.8, region: "Midwest"),
        .init(year: 2014, numberOfPermits: 101.0, region: "Midwest"),
        .init(year: 2015, numberOfPermits: 104.7, region: "Midwest"),
        .init(year: 2016, numberOfPermits: 112.4, region: "Midwest")
    ]
    
}
