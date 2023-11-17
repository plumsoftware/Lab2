import SwiftUI

struct ProfileBar: View {

    var user: User = User(icon: "profile", name: "Slava")

    var body: some View {
        HStack(alignment: .top) {
            Text("Hello,")
                .font(.custom(MyFonts.poppinsRegular, size: 14.0))
                .foregroundColor(MyColors.MyText.Secondary)
            Text("Hi " + user.name)
                .font(.custom(MyFonts.poppinsRegular, size: 20))
            
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
        ProfileBar(user: User(icon: "profile", name: "Slava"))
    }
}
