Pod::Spec.new do |s|
  s.name          = 'FwiCore'
  s.version       = '4.1.7'
  s.summary       = 'FwiCore project'
  s.description   = 'Using for iOS project'
  s.homepage      = 'https://google.com.vn'
  s.license       = 'MIT'
  s.author        = 'DungVu'
  # s.platform      = :ios
  # s.source       = { :path => '.' }
  s.source = { :git => 'https://github.com/dung00275/swift-core', :tag => '4.1.7' }
  s.source_files        = 'Sources/FwiCore/*.*'
  # s.requires_arc            = true
  s.ios.deployment_target   = '10.0'
  # s.frameworks = 'Foundation'
  s.dependency 'Alamofire'
  s.dependency 'CocoaLumberjack'
end
