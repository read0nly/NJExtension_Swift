#
#  Be sure to run `pod spec lint iOSExtension_Swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "iOSExtension_Swift"
  s.version      = "0.0.1"
  s.summary      = "A short description of iOSExtension_Swift."


  s.homepage     = "https://github.com/read0nly/iOSExtension_Swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "iOSExtension_Swift" => "314308700@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/read0nly/iOSExtension_Swift.git", :tag => "#{s.version}" }
  s.source_files  =  "iOSExtension/*"
  s.frameworks = "Foundation" , "UIKit"
  s.requires_arc = true

end
