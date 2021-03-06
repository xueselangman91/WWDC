//
//  DateProvider.swift
//  WWDC
//
//  Created by Guilherme Rambo on 13/05/17.
//  Copyright © 2017 Guilherme Rambo. All rights reserved.
//

import Foundation
import ConfCore

typealias DateProvider = () -> Date

let Today: DateProvider = {
    if let fakeDate = Arguments.deloreanDate {
        let formatter = DateFormatter()
        formatter.dateFormat = ConfCoreDateFormat
        return formatter.date(from: fakeDate)!
    } else {
        return Date()
    }
}
