
Pod::Spec.new do |s|
 s.name         = "zI01xsq_yrpwr_community"
  s.version      = "0.0.1"
  s.summary      = "画图"
  s.description  = <<-DESC
                    画图 画画 填图  填色 颜色 花园
                   DESC

  s.homepage     = "https://github.com/yangying514/YYPainter"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ying" => "1437209562@qq.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/yangying514/YYPainter.git", :tag => "#{s.version}" }

   s.vendored_frameworks = "/zI01xsq_yrpwr_community.framework"
  #s.source_files  = "/YYPaintDemo/zI01xsq_yrpwr_community.framework"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  s.frameworks = "UIKit", "Foundation"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"=

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
