//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Mohamed Mostafa on 14/09/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack() {
                
                Rectangle()
                    .frame(height: 300)
                    .frame(maxWidth: .infinity)
                
                Spacer().frame(height: 60)
                
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.darkGray))
                    
                    Text("Not Yet Scanned")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color(.red))
                        .padding()
                
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
