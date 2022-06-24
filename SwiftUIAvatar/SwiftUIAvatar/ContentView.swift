//
//  ContentView.swift
//  SwiftUIAvatar
//
//  Created by Angelos Staboulis on 15/7/21.
//

import SwiftUI
import RemoteImage
struct ContentView: View {
    let urlImage = URL(string: "https://www.carpe-diem.no/content/uploads/2016/12/iStock-538896918_Hellas_Andros.jpg")!
    @State var dataImage = Data()
    var body: some View {
        ScrollView{
            HStack{
                Text("SwiftUI Avatar")
            }.padding(130)
            VStack{
                HStack{
                    Image(uiImage: UIImage(data: dataImage) ?? UIImage()).frame(width: 300, height: 295, alignment: .center).cornerRadius(UIScreen.main.bounds.width / 2)
                }
            }.onAppear {
                DispatchQueue.main.async {
                    do{
                        dataImage = try Data(contentsOf: urlImage)
                    }
                    catch{
                        
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
