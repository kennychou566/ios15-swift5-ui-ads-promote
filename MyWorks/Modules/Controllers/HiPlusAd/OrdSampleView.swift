//
//  OrdSampleView.swift
//  MyWorks
//
//  Created by Lee Yan Pu on 2022/5/18.
//

import SwiftUI

struct OrdSampleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OrdSampleView_Previews: PreviewProvider {
    static var previews: some View {
        OrdSampleView()
    }
}
struct OrdSample1: View {
    var body: some View {
        VStack{
            HStack{
                Text("審核中")
                    .foregroundColor(Color(hexString: "#f2305f"))
                Spacer()
                Text("下單時間：2022-02-06")
                    .foregroundColor(Color(hexString: "#8e8e8e"))
            }
            HStack{
                HStack{
                    Image("ord1")
                        .resizable()
                }
                .frame(width:95,height: 125)
                
                    
                VStack{
                    Text("好吃新奇又好玩＃用美食向世...")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    Text("2022-02-05")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                    HStack{
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                                
                            Text("播放次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("按讚次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("留言次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        
                        
                        
                    }
                    .frame(maxWidth:.infinity)
                    HStack{
                        Button(action: {}) {
                            NavigationLink(destination: MidOrdConfirmView()){
                                Text("查看審核")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    
                            }

                        }
                        .frame(width:140, height:26)
                        .background(Color(hexString: "#f2305f"))
                        .cornerRadius(25)
                        Spacer()
                    }
                    .frame(maxWidth:.infinity)
                   Spacer()
                }
                .frame(maxWidth:.infinity,maxHeight: 125,alignment: .leading)
            }
        }
        Divider()
            .frame(height: 1)
            .background(.black)
    }
}
struct OrdSample2: View {
    var body: some View {
        VStack{
            HStack{
                Text("投放中")
                    .foregroundColor(Color(hexString: "#f2305f"))
                Spacer()
                Text("下單時間：2022-02-06")
                    .foregroundColor(Color(hexString: "#8e8e8e"))
            }
            HStack{
                HStack{
                    Image("ord2")
                        .resizable()
                }
                .frame(width:95,height: 125)
                
                    
                VStack{
                    Text("好吃新奇又好玩＃用美食向世...")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    Text("2022-02-05")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                    HStack{
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                                
                            Text("播放次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("按讚次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("留言次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        
                        
                        
                    }
                    .frame(maxWidth:.infinity)
                    HStack{
                        HStack{
                            NavigationLink(destination: MidAdCheckOutView()){
                                Text("再嗨＋")
                                    .font(.headline)
                            }
                        }
                        .frame(maxWidth:140,minHeight: 30)
                        .foregroundColor(Color.white)
                        .background(Color(hexString: "#f2305f"))
                        .cornerRadius(25)

                        Spacer()
                    }
                    .frame(maxWidth:.infinity)
                   Spacer()
                }
                .frame(maxWidth:.infinity,maxHeight: 125,alignment: .leading)
            }
        }
        Divider()
            .frame(height: 1)
            .background(.black)
    }
}
struct OrdSample3: View {
    var body: some View {
        VStack{
            HStack{
                Text("完成訂單")
                    .foregroundColor(Color(hexString: "#f2305f"))
                Spacer()
                Text("下單時間：2022-02-06")
                    .foregroundColor(Color(hexString: "#8e8e8e"))
            }
            HStack{
                HStack{
                    Image("ord3")
                        .resizable()
                }
                .frame(width:95,height: 125)
                
                    
                VStack{
                    Text("好吃新奇又好玩＃用美食向世...")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    Text("2022-02-05")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                    HStack{
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                                
                            Text("播放次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("按讚次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("留言次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        
                        
                        
                    }
                    .frame(maxWidth:.infinity)
                    HStack{
                        Button(action: {}) {
                            Text("上熱門")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .frame(width:140, height:26)
                        .background(Color(hexString: "#f2305f"))
                        .cornerRadius(25)
                        Spacer()
                    }
                    .frame(maxWidth:.infinity)
                   Spacer()
                }
                .frame(maxWidth:.infinity,maxHeight: 125,alignment: .leading)
            }
        }
        Divider()
            .frame(height: 1)
            .background(.black)
    }
}
struct OrdSample4: View {
    var body: some View {
        VStack{
            HStack{
                Text("審核不通過")
                    .foregroundColor(Color(hexString: "#f2305f"))
                Spacer()
                Text("下單時間：2022-02-06")
                    .foregroundColor(Color(hexString: "#8e8e8e"))
            }
            HStack{
                HStack{
                    Image("ord4")
                        .resizable()
                }
                .frame(width:95,height: 125)
                
                    
                VStack{
                    Text("好吃新奇又好玩＃用美食向世...")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    Text("2022-02-05")
                        .font(.headline)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                    HStack{
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                                
                            Text("播放次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("按讚次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        VStack{
                            Text("666")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .foregroundColor(Color(hexString: "#f2305f"))
                            Text("留言次數")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .frame(maxWidth:.infinity)
                        
                        
                        
                    }
                    .frame(maxWidth:.infinity)
                    HStack{
                        Button(action: {}) {
                            Text("查看審核")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .frame(width:140, height:26)
                        .background(Color(hexString: "#f2305f"))
                        .cornerRadius(25)
                        Spacer()
                    }
                    .frame(maxWidth:.infinity)
                   Spacer()
                }
                .frame(maxWidth:.infinity,maxHeight: 125,alignment: .leading)
            }
        }
        Divider()
            .frame(height: 1)
            .background(.black)
    }
}
