
Pod::Spec.new do |s|

  s.name            = "zI01xsq_yrpwr_community"
  s.version         = "0.0.2"
  s.homepage        = "https://github.com/yangying514/YYPainter"
  s.summary         = "画图"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author          = { "ying" => "1437209562@qq.com" }
  
  s.ios.deployment_target = '9.0'

  s.source          = { :git => "https://github.com/yangying514/YYPainter.git", :tag => "#{s.version}" }
#s.source_files    = 'ios/RCTJPushModule/*.{h,m}'
  s.frameworks      = 'UIKit','CFNetwork'
  s.vendored_frameworks = "zI01xsq_yrpwr_community.framework"
s.xcconfig = {
'VALID_ARCHS' =>  'arm64 x86_64',
}
end
