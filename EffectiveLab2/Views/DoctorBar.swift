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
                        .font(Font.custom(MyFonts.poppinsRegular, size: 14))
                        .foregroundColor(MyColors.MyText.White)
                    }

                
                    Spacer()
                    Image("arrow_right")
                        .foregroundColor(MyColors.MyText.White)
                    }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .center)
            }

            Divider()
                .overlay(MyColors.MyText.White.opacity(0.5))
                .frame(height: 16)
                .padding(.vertical, 16)

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
                    Text(doctor.lastOpen)
                        .foregroundColor(MyColors.MyText.White)
                        .font(.custom(MyFonts.poppinsRegular, size: 12))
                        .padding(.trailing, 24)
            }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
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
