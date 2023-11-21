//
//  NearDoctorList.swift
//  EffectiveLab2
//
//  Created by  Student on 21.11.2023.
//

import Foundation
import SwiftUI

struct NearDoctorList : View {
    
    var nearDoctors = [
        Doctor(
            id: 1,
            icon: "doctor2",
            name: "Dr. Slava",
            job: "Окулист",
            distance: 1.0,
            mark: 4.9,
            reviewCount: 123,
            lastOpen: "12:00"
        ),
        
        Doctor(
            id: 2,
            icon: "doctor1",
            name: "Dr. Stepa",
            job: "Массажист ног",
            distance: 0.5,
            mark: 1.9,
            reviewCount: 123000,
            lastOpen: "10:00"
        ),
        
        Doctor(
            id: 3,
            icon: "doctor2",
            name: "Dr. Egor",
            job: "Педиатр",
            distance: 2.5,
            mark: 4.0,
            reviewCount: 1,
            lastOpen: "19:00"
        )
    ]
    
    var body : some View {
        List(nearDoctors, id: \.id) { doctor in
            NearDoctorCard(doctor: doctor)
        }
    }
}
