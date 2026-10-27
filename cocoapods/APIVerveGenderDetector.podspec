Pod::Spec.new do |s|
  s.name             = 'APIVerveGenderDetector'
  s.version          = '1.2.3'
  s.summary          = 'Gender Detector is a gender prediction API that estimates the likely gender of a person from their name.'
  s.description      = <<-'DESC'
Gender Detector is a gender prediction API that estimates the likely gender of a person from their name. Pass a first name and get back the predicted gender as JSON, ready for salutations, profile defaults, or audience analysis.

This iOS/macOS SDK provides a convenient way to access the Gender Detector from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/genderdetector?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/genderdetector-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveGenderDetector/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
