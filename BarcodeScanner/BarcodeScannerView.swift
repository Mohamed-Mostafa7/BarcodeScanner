//
//  ContentView.swift
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

struct BarcodeScannerView: View {
    @State private var scannedCode: String = ""
    @State private var alertItem: AlertItem?
    var body: some View {
        NavigationView {
            VStack() {
                
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(height: 300)
                    .frame(maxWidth: .infinity)
                
                Spacer().frame(height: 60)
                
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)
                        .foregroundColor(Color(.darkGray))
                    
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                        .padding()
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.messag), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
