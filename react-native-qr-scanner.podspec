require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-qr-scanner"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/geektimecoil/react-native-onesignal"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "https://github.com/shifeng1993/react-native-qr-scanner.git" }
  s.source_files   = 'ios/QrCode/*.{h,m}'

  s.dependency 'React'

end
