Pod::Spec.new do |s|
  s.name         = 'MOLAuthenticatingURLSession'
  s.version      = '2.2'
  s.platform     = :osx
  s.license      = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.homepage     = 'https://github.com/google/macops-MOLAuthenticatingURLSession'
  s.authors      = { 'Google Macops' => 'macops-external@google.com' }
  s.summary      = 'An NSURLSession wrapper that handles certificate validation nicely'
  s.source       = { :git => 'https://github.com/google/macops-MOLAuthenticatingURLSession.git',
                     :tag => "v#{s.version}" }
  s.source_files = 'Source/*.{h,m}'
  s.framework    = 'Security'
  s.dependency 'MOLCertificate', '~> 1.5'
end
