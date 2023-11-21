import Foundation
import SwiftUI

struct HomeScreen: View {
    var body: some View{
            //ScrollView (showsIndicators: false) {
                VStack (alignment: .leading){

                    Content()
                    
                    Spacer()
                        .frame(height: 50)
                }
            //}
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
