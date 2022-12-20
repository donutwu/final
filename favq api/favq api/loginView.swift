//
//  loginView.swift
//  favq api
//
//  Created by pads on 2022/12/19.
//

import SwiftUI

struct loginView: View {
    @EnvironmentObject var loginData: Login
      @State var email:String=""
        @State var password:String=""
    var body: some View {
        TextField("信箱",text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 300, height: 50, alignment: .center)
                       SecureField("密碼",text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
                           .frame(width: 300, height: 100, alignment: .center)
        Button(action: {
            let url = URL(string: "https://favqs.com/api/session")!
                                var request = URLRequest(url: url)
                                request.httpMethod = "POST"
                                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("Token token=\"418e36330b5982ab2ec1988d51b6574f\"", forHTTPHeaderField: "Authorization")
            let encoder = JSONEncoder()
            //print("i am com ing\n")
            let user1 = CreatedSessionBody(user: SessionUser(login:email,password: password))
            
            //print(user1)
            let data = try? encoder.encode(user1)
            print("terry333\n")
            request.httpBody = data
            //print("terry\n")
            URLSession.shared.dataTask(with: request) { data, response, error  in
                        if let data = data {
                            do {
                                let content = String(data: data, encoding: .utf8)
                               print("content=\(content)")
                                let decoder = JSONDecoder()
                                let UserResponse = try decoder.decode(CreateSessionResponse.self, from: data)
                                print("you are here\n")
                               // print(UserResponse)
                                
                                //token.token = UserResponse.Token
                            } catch  {
                                print("you are error\n")
                                print(error)
                            }
                        } else { print("no  no n on \n") }
                    }.resume()
            
        }, label: {Text("登入")})
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}
