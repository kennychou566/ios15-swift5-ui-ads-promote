//
//  VideoRowView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/1.
//

import SwiftUI

struct VideoRowView: View {
    var vrow: Vrow
    var body: some View {
        HStack{
            VStack{
            vrow.image.resizable()
         //       .padding(.leading,-15)
            }
            .frame(width:120,height: 170)
            
            VStack(alignment: .leading){
                HStack{
                    Text(verbatim: vrow.name)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(0)
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                HStack{
                    Text(verbatim: vrow.tags)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(0)
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                HStack{
                    Text(verbatim: vrow.date)
                        .font(.title2)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                        .padding(0)
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                Spacer()
                NavigationLink(destination: MidAdCheckOutView()){
                    Text("上嗨+")
                        .font(.headline)
                       .foregroundColor(Color.white)
                       .frame(width:140, height:52)
                       .background(Color(hexString: "#f2305f"))
                       .cornerRadius(25)
                      
                }


            }
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            
            
        }
        .frame(maxWidth:.infinity,maxHeight: 170)
    }
}

struct VideoRowView_Previews: PreviewProvider {
    static var previews: some View {
        VideoRowView(vrow: menuItems[0])
    }
}

struct Vrow: Codable, Hashable, Identifiable {
  var id: Int
  var name: String
  var tags: String
  var date: String
  var imageName: String
  var image: Image{
        Image(imageName)
  }
    
}
let menuItems: [Vrow] = processJSONData(filename: "menuData.json")
private func processJSONData<T: Decodable>(filename: String) -> T {
  let data: Data
  guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
      else {
          fatalError("Couldn't find \(filename) in main bundle.")
  }
  do {
      data = try Data(contentsOf: file)
  } catch {
      fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
  }
  do {
      let decoder = JSONDecoder()
      return try decoder.decode(T.self, from: data)
  } catch {
      fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
  }
}
