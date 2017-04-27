
Pod::Spec.new do |s|

  s.name         = "VICKit"
  s.version      = "0.3.0"
  s.summary      = "VICKit."
  s.homepage     = "https://github.com/sswimp/VICKit"
  s.license      = "MIT"
  s.author       = { "sswimp" => "754612130@qq.com" }
  s.platform     = :ios,'7.0'
  s.source       = { :git => "https://github.com/sswimp/VICKit.git", :tag => s.version }
  s.source_files = "VICKit/**/*.{h,m}"
  s.requires_arc = true
  s.dependency 'AFNetworking', '~> 2.6.0'
  s.dependency 'MBProgressHUD'
end
