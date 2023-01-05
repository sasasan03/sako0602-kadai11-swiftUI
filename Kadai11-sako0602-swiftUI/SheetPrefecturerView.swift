//
//  SheetPrefecturerView.swift
//  Kadai11-sako0602-swiftUI
//
//  Created by sako0602 on 2023/01/02.
//

import SwiftUI

struct SheetPrefecturerView: View {
    
    @Binding var showSheet: Bool
//    @Binding var prefecture: String?
    @Binding var selectedPrefecture: String?
    
    var body: some View {
        NavigationStack {
            List{
//                ForEach(0..<Prefecture.all.count, id: \.self){ index in
//                    Button(Prefecture.all[index] ?? "その他の都道府県"){
//                        (selected)prefecture =  Prefecture.all[index]
                ForEach(Prefecture.all, id: \.self){ prefecture in
                    Button(prefecture){
                        selectedPrefecture =  prefecture
                        showSheet = false
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        showSheet = false
                    }
                }
            }
        }
    }
}

struct SheetPrefecturerView_Previews: PreviewProvider {
    static var previews: some View {
        SheetPrefecturerView(showSheet: Binding<Bool>.constant(false), selectedPrefecture: Binding<String?>.constant("")
    )
    }
}
