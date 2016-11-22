Pod::Spec.new do |s|
  s.name    = 'Tesseract-Swift'
  s.version = '0.0.1'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'A collection of independent utility classes for iOS projects in Swift.'
  s.homepage = 'https://github.com/actilot/tesseract-swift'
  s.authors = {
    'acilot' => 'actilot@gmail.com',
  }

  s.source = {
    :git => 'https://github.com/actilot/tesseract-swift.git',
    :tag => "#{s.version}"
  }
  s.platform = :ios, '9.0'
  s.requires_arc = true
  s.frameworks = 'UIKit'

  s.source_files = 'Tesseract/**/*.swift'
  s.preserve_paths = '*'
end
