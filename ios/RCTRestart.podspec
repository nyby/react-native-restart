require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|
  s.name         = "RCTRestart"
  s.version      = version
  s.summary      = "react-native-restart"
  s.description  = <<-DESC
                  Restart React-Native applications
                   DESC
  s.homepage     = package["homepage"]
  s.license      = "MIT"
  # s.license    = { :type => "MIT" }
  s.author       = package["author"]
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/nyby/react-native-restart.git", :tag => "master" }
  s.source_files  = "RCTRestart/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
