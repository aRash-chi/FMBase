
Pod::Spec.new do |s|
  s.name             = "FMbase"
  s.version          = "0.2.1"
  s.summary          = "FMbase."
  s.description      = <<-DESC
    FMbase.分类
                       DESC

  s.homepage         = "https://github.com/aRash-chi/FMBase"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "chxiansheng" => "18758281902@163.com" }
  s.source           = { :git => "https://github.com/aRash-chi/FMbase.git", :tag => s.version.to_s }
  s.ios.deployment_target = "8.0"
  s.source_files = "FMbase/Classes/**/*"
  s.requires_arc = true
  # s.dependency 'AFNetworking', '~> 2.3'

end
