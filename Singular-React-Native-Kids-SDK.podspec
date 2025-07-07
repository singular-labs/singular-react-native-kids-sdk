require 'json'
package = JSON.parse(File.read("package.json"))

Pod::Spec.new do |spec|
  spec.name             = "Singular-React-Native-Kids-SDK"
  spec.version          = package["version"]
  spec.summary          = "Singular React Native bridge for iOS"
  spec.license          = "MIT"
  spec.homepage         = "https://www.singular.net/"
  spec.author           = "Singular Labs"
  spec.source           = { :git => "https://github.com/singular-labs/Singular-React-Native-Kids-SDK.git", :tag => spec.version.to_s }
  spec.source_files      = "ios/*.{h,m}"
  spec.platform         = :ios, "12.0"
  spec.dependency 'Singular-Kids-SDK', '12.8.1'
  spec.static_framework = true

  spec.dependency 'React'
end
