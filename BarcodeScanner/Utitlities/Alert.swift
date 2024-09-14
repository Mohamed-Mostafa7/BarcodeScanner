//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Mohamed Mostafa on 14/09/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let messag: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              messag: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("OK")))
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                              messag: "The value scanned is not valid. this app scanes EAN-8 and EAN-13.",
                                              dismissButton: .default(Text("OK")))
}
