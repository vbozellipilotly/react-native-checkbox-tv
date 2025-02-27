require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNCCheckbox"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']

  s.description  = package['description']
  s.platform     = :ios, "9.0"

  s.platforms = { :ios => "9.0", :tvos => "12.4" }

  s.source       = { :git => "https://github.com/react-native-community/react-native-checkbox.git", :tag => "develop" }
  s.source_files  = "ios/**/*.{h,m}"
  s.dependency 'BEMCheckBox', '~> 1.4'
  s.dependency "React-Core"

end
