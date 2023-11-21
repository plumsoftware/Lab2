//
//  NearDoctorCard.swift
//  EffectiveLab2
//
//  Created by  Student on 21.11.2023.
//

import Foundation
import SwiftUI

struct NearDoctorCard : View {
    
    let doctor: Doctor
    
    var body: some View {
        Button(action: {
            print("Near doctor card clicked")
        }) {
            VStack {
                //Mark:: Doctor bar top
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
                    Image("location")
                        .foregroundColor(MyColors.MyText.Secondary)
                    
                    Text(String(doctor.distance))
                        .foregroundColor(MyColors.MyText.Secondary)
                    }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .center)
                
                    Divider()
                        .overlay(MyColors.MyText.White.opacity(0.5))
                        .frame(height: 16)
                        .padding(.vertical, 16)
                
                
                HStack(alignment: .top, spacing: 12)
                {
                    Image("clock")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .foregroundColor(MyColors.MyText.Yellow)
                    Text(String(doctor.mark))
                        .foregroundColor(MyColors.MyText.Yellow)
                        .font(.custom(MyFonts.poppinsRegular, size: 12))
                    Text("(" + String(doctor.reviewCount) + ")")
                        .foregroundColor(MyColors.MyText.Yellow)
                        .font(.custom(MyFonts.poppinsRegular, size: 12))
                    
                    Spacer()
                    
                    Image("clock")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text(doctor.lastOpen)
                        .foregroundColor(MyColors.MyText.White)
                        .font(.custom(MyFonts.poppinsRegular, size: 12))
                        .padding(.trailing, 24)
                }
                    .padding(0)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                           
                

            }
        }
            .padding(20)
            .background(MyColors.MyText.White)
            .cornerRadius(12)
    }
}

struct NearDoctorCard_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctorCard(
            doctor: Doctor(
                id: 1,
                icon: "doctor2",
                name: "Dr. Slava",
                job: "Окулист",
                distance: 1.0,
                mark: 4.9,
                reviewCount: 123,
                lastOpen: "12:00"
            )
        )
    }
}
