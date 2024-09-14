//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Mohamed Mostafa on 14/09/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack() {
                
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(height: 300)
                    .frame(maxWidth: .infinity)
                
                Spacer().frame(height: 60)
                
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)
                        .foregroundColor(Color(.darkGray))
                    
                Text(viewModel.statusText)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(viewModel.statusTextColor)
                        .padding()
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.messag), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
