
Pod::Spec.new do |s|
	
s.name         = "iOSExtension_Swift"
s.version      = "0.0.2"
s.summary      = "A short description of iOSExtension_Swift."
s.homepage     = "https://github.com/read0nly/iOSExtension_Swift"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "nj" => "nj.readonly@gmail.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/read0nly/iOSExtension_Swift.git", :tag => s.version.to_s }
s.requires_arc = true
s.source_files  = "iOSExtension/*.swift"
s.framework = "UIKit","Foundation"
end
