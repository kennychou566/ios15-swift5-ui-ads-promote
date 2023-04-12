//
//  OrderRowView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/3.
//

import SwiftUI

struct OrderRowView: View {
    var ordListParse: OrdListParse
    var body: some View {
        VStack{
            HStack{
                ordListParse.image
                    .resizable()
                    .frame(width: 100, height: 100)
                
                
                VStack(alignment: .leading, spacing: 10){
                    Text(verbatim: ordListParse.name)
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                    Text(verbatim: ordListParse.tags)
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                    Text(verbatim: ordListParse.date)
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                    Spacer()
                    
                    
                }
                
                
            }
        }
       
    }
}
struct OrdProgressView: View {
    var ordListParse: OrdListParse
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "checkmark")
                    .resizable()
                    .foregroundColor(Color.white)
                    .frame(width: 15, height: 15)
                    .padding()
                    .background(Color(hexString: "#f66588"))
                    .cornerRadius(35)
                VStack(alignment: .leading, spacing: 10){
                    Text(verbatim: ordListParse.status)
                        .font(.title3)
                        .padding(.top,0)
                    Text(verbatim: ordListParse.description)
                        .font(.subheadline)
                        .padding(.top,-10)
                    
                }
                
                Spacer()
            }
        }
    }
}
struct OrdStatusView: View {
    var ordListParse: OrdListParse
    
    var body: some View {
        VStack{
            HStack{
                if ordListParse.status == "審核中" {
                    Image("clock")
                        .frame(width: 30, height: 30)
                        .padding()

                }else if ordListParse.status == "審核不通過" {
                    Image(systemName: "xmark")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 30, height: 30)
                        .padding()
                        .background(Color(hexString: "#f66588"))
                        .cornerRadius(30)
                }else if ordListParse.status == "投放完成" || ordListParse.status == "完成訂單" {
                    Image(systemName: "checkmark")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 30, height: 30)
                        .padding()
                        .background(Color(hexString: "#f66588"))
                        .cornerRadius(30)
                }else  if ordListParse.status == "投放中" {
                    Image("onPlay")
                        .frame(width: 30, height: 30)
                        .padding()

                }
                
                VStack(alignment: .leading, spacing: 10){
                    Text(verbatim: ordListParse.status)
                        .foregroundColor(Color.white)
                        .font(.title2)
                        .padding(.top,0)
                    Text(verbatim: ordListParse.description)
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .padding(.top,-7)
                    
                }
                
                Spacer()
            }
            .frame(height: 80, alignment:.center)
            .padding(.leading)
            .background(Color(hexString: "#f2305f"))
            
        }
    }
}
struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            List{
                OrdSliderView()
                OrdStatusView(ordListParse: ordItems[6])
                OrderRowView(ordListParse: ordItems[6])
            }
            .padding(.horizontal,-25)
            .offset(y:-30)

         }
        
    }
}

struct OrdListParse: Codable, Hashable, Identifiable {
  var id: Int
  var ordNo: String
  var name: String
  var tags: String
  var date: String
  var imageName: String
  var status: String
  var description: String
  var method: String
  var image: Image{
          Image(imageName)
    }
}
let ordItems: [OrdListParse] = processJSONData(filename: "orderList.json")
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
