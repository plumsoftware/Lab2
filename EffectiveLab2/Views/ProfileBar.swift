import SwiftUI

struct ProfileBar: View {

    var user: User = User(icon: "userProfile", name: "Slava")

    var body: some View {
        HStack(alignment: .top) {
            Text("Hello,")
                .font(.custom(MyFonts.poppinsRegular, size: 14.0)).fontWeight(.regular)
                .foregroundColor(MyColors.MyText.Secondary)
            Text("Hi " + user.name)
                .font(.custom(MyFonts.poppinsBold, size: 20)).fontWeight(.bold)
            
            Spacer()
            
            Image(user.icon)
                .resizable()
                .frame(width: 56, height: 56)

        }
        .padding(0)
        .frame(width: .infinity, alignment: .center)
    }
}

struct ProfileBar_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBar(user: User(icon: "userProfile", name: "Slava"))
    }
}
