
Pod::Spec.new do |s|

  s.name         = "yuanjiangFirstDemo"
  s.version      = "1.0.1"
  s.summary      = "this is my first demo"

  s.description  = <<-DESC
                        my name is shenyuanjiang;
                   DESC

  s.homepage     = "https://github.com/bestjiangbeatyou/yuanjiangFirstDemo"

  s.license      = "MIT"

  s.author             = { "shenyuanjiang" => "1223551803@qq.com" }


  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/bestjiangbeatyou/yuanjiangFirstDemo.git", :tag => s.version }

s.source_files  = "HHHHHHH.{h,m}"

end
