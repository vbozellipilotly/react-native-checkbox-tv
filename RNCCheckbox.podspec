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

  s.platforms = { :ios => "9.0", :tvos => "12.4" }

  s.source       = { :git => "https://github.com/vbozellipilotly/react-native-checkbox-tv.git", :tag => "develop" }
  s.source_files  = "ios/**/*.{h,m,swift}"
  s.public_header_files = 'ios/**/*..h'

  s.dependency "React-Core"

end