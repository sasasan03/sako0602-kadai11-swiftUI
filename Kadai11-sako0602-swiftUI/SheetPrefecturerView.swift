//
//  SheetPrefecturerView.swift
//  Kadai11-sako0602-swiftUI
//
//  Created by sako0602 on 2023/01/02.
//

import SwiftUI

struct SheetPrefecturerView: View {
    
    @Binding var showSheet: Bool
    @Binding var prefecture: String?
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(0..<Prefecture.all.count, id: \.self){ index in
                    Button(Prefecture.all[index] ?? ""){
                        prefecture =  Prefecture.all[index]
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
        SheetPrefecturerView(showSheet: Binding<Bool>.constant(false), prefecture: Binding<String?>.constant("")
    )
    }
}
