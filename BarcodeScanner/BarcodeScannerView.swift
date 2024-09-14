//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Mohamed Mostafa on 14/09/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode: String = ""
    var body: some View {
        NavigationView {
            VStack() {
                
                ScannerView(scannedCode: $scannedCode)
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
        }
    }
}

#Preview {
    BarcodeScannerView()
}
