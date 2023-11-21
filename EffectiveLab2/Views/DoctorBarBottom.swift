//
//  DoctorBarBottom.swift
//  EffectiveLab2
//
//  Created by  Student on 21.11.2023.
//

import Foundation
import SwiftUI

struct DoctorBarBottom : View {
    
    var lastOpen: String = ""
    
    var body : some View {
        HStack(alignment: .top, spacing: 12)
        {
            Image("calendar")
                    .resizable()
                    .frame(width: 16, height: 16)
            Text("Sunday, 12 June")
                    .foregroundColor(MyColors.MyText.White)
                    .font(.custom(MyFonts.poppinsRegular, size: 12))
            Spacer()
            Image("clock")
                    .resizable()
                    .frame(width: 16, height: 16)
            Text(lastOpen)
                    .foregroundColor(MyColors.MyText.White)
                    .font(.custom(MyFonts.poppinsRegular, size: 12))
                    .padding(.trailing, 24)
        }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

struct DoctorBarBottom_Previews: PreviewProvider {
    static var previews: some View {
        DoctorBarBottom(lastOpen: "17:00")
    }
}
