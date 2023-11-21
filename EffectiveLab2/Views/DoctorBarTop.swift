//
//  DoctorBarTop.swift
//  EffectiveLab2
//
//  Created by  Student on 21.11.2023.
//

import Foundation
import SwiftUI

struct DoctorBarTop : View {
    
    var doctor: Doctor
    
    var body: some View{
        HStack(alignment: .center) {
            Image(doctor.icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 48.0, height: 48.0)
                .clipped()

            VStack (alignment: .leading){
            Text(doctor.name)
                    .font(.custom(MyFonts.poppinsBold, size: 16))
                .foregroundColor(.white)
            Text(doctor.job)
                    .font(Font.custom(MyFonts.poppinsRegular, size: 14)).fontWeight(.regular)
                    .foregroundColor(MyColors.MyText.White)
            }

        
            Spacer()
            Image("arrow_right")
                .foregroundColor(MyColors.MyText.White)
            }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct DoctorBarTop_Previews: PreviewProvider {
    static var previews: some View {
        DoctorBarTop(doctor: Doctor())
    }
}
