//
//  ContentView.swift
//  Product
//
//  Created by Bekir Berke Yılmaz on 24.10.2023.
//

import SwiftUI
struct ContentView: View {
    @StateObject private var productViewModel = ProductListViewModel()
    @State private var showingCart = false
    var body: some View {
        NavigationStack{
            VStack{
                List(productViewModel.filteredProducts){product in
                        HStack{
                            Text("\(product.title)\n\(product.price.formatted())€")
                                .bold()
                        }
                }
            }
            .onAppear{
                productViewModel.fetchProducts()
            }
            .navigationTitle("Products")
            .searchable(text: $productViewModel.searchText)
        }
    }
}

#Preview {
    ContentView()
}
