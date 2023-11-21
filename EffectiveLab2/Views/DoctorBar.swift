import SwiftUI

struct DoctorBar: View {

    let doctor: Doctor = Doctor(
        id: 0,
        icon: "doctor1",
        name: "Dr. Imran Syahir",
        job: "General Doctor",
        distance: 0.0,
        mark: 0.0,
        reviewCount: 0,
        lastOpen: "17:00"
    )

    var body: some View {
        Button (action: {
            print("Doctor card clicked")
        })
        {
            VStack (alignment: .leading) {
                DoctorBarTop(doctor: doctor)
                
                Divider()
                    .overlay(MyColors.MyText.White.opacity(0.5))
                    .frame(height: 16)
                    .padding(.vertical, 16)
                
                DoctorBarBottom(lastOpen: doctor.lastOpen)
            }
        }
            .padding(20)
            .background(MyColors.Primary)
            .cornerRadius(12)
    }
}

struct DoctorBar_Previews: PreviewProvider {
    static var previews: some View {
        DoctorBar()
    }
}
