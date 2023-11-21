//
//  SearchView.swift
//  EffectiveLab2
//
//  Created by  Student on 21.11.2023.
//

import Foundation
import SwiftUI

struct SearchView : View {
    
    @State private var text = ""
    
    var  body : some View {
        HStack(alignment: .center, spacing: 16.0){
            Image("search")
                .foregroundColor(MyColors.MyText.Secondary)
                .frame(width: 24, height: 24)
            
            TextField("Search doctor or health issue", text: $text)
                .foregroundColor(MyColors.MyText.Secondary)
                .cornerRadius(12)
        }
            .frame(width: .infinity, alignment: .center)
            .background(MyColors.MainBackground.SecondaryBackground)
    }
}
