Pod::Spec.new do |s|
  s.name     = 'XLForm'
  s.version  = '4.3.0-private'
  s.license  = { :type => 'MIT' }
  s.summary  = 'XLForm (private fork with Crashlytics logging).'
  s.description = <<-DESC
                    Private fork of XLForm with production telemetry for picker-related crash diagnostics.
                  DESC
  s.homepage = 'https://github.com/xmartlabs/XLForm'
  s.authors  = { 'Martin Barreto' => 'martin@xmartlabs.com' }
  s.source   = { :git => 'https://github.com/matijag1/XLForm', :branch => 'crash_logs' }
  s.source_files = 'XLForm/XL/**/*.{h,m}'
  s.requires_arc = true
  s.ios.deployment_target = '16.0'
  s.ios.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'
  s.resource = 'XLForm/XLForm.bundle'

  s.dependency 'Firebase/Crashlytics'
end
