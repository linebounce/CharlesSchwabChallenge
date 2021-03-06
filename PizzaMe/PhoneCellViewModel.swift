//
//  PhoneCellViewModel.swift
//  PizzaMe
//
//  Copyright © 2016 Charles Schwab & Co., Inc. All rights reserved.
//

import Foundation

// MARK: - PhoneCellViewModel

final class PhoneCellViewModel: DetailCellViewModel {
    
    // MARK: - Property Delcarations
    
    let phoneNumber: String
    let imageName:   String = "phone_call"
    
    // MARK: - Initialization
    
    init(restaurant: Restaurant) {
        phoneNumber = restaurant.phone
    }
    
    override var action: String? {
        return "tel:" + phoneNumber.components(separatedBy: NSCharacterSet.decimalDigits.inverted).joined(separator: "")
    }
}
