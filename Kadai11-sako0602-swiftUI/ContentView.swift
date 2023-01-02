//
//  ContentView.swift
//  Kadai11-sako0602-swiftUI
//
//  Created by sako0602 on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet = false
    @State private var prefecture: String? = nil
    
    var body: some View {
        NavigationStack{
            HStack {
                Text("都道府県")
                    .padding()
                Spacer()
                Text("\(prefecture ?? "未選択")")
                Spacer()
                Button("変更"){
                    showSheet = true
                }
                .padding()
            }
            .padding()
        }
        .sheet(isPresented: $showSheet) {
            SheetPrefecturerView(showSheet: $showSheet, prefecture: $prefecture)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
