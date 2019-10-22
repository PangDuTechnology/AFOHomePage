Pod::Spec.new do |s|
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOHomePage"
  s.version      = "0.0.21"
  s.summary      = "main view."

  # This description is used to generate tags and improve search results.
  s.description  = 'The application system API plays iTunes and saves music.'
  s.homepage     = "https://github.com/PangDuTechnology/AFOHomePage.git"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "PangDu" => "xian312117@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/PangDuTechnology/AFOHomePage.git", :tag => s.version.to_s }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "AFOHomePage/*.{h,m}"
  s.public_header_files = "AFOHomePage/*.h"

  s.subspec 'models' do |model|
        model.source_files = 'AFOHomePage/models/*.{h,m}' 
        model.public_header_files = 'AFOHomePage/models/*.h'  
    end 

  s.subspec 'views' do |view|
        view.source_files = 'AFOHomePage/views/*.{h,m}' 
        view.public_header_files = 'AFOHomePage/views/*.h'  

          view.subspec 'main' do |main|
            main.subspec 'views' do |views|
              views.source_files = 'AFOHomePage/views/main/views/*.{h,m}' 
              views.public_header_files = 'AFOHomePage/views/main/views/*.h'
            end
            main.subspec 'models' do |models|
              models.source_files = 'AFOHomePage/views/main/models/*.{h,m}' 
              models.public_header_files = 'AFOHomePage/views/main/models/*.h'         
            end
          end

          view.subspec 'list' do |list|
            list.subspec 'models' do |models|
              models.source_files = 'AFOHomePage/views/list/models/*.{h,m}' 
              models.public_header_files = 'AFOHomePage/views/list/models/*.h'
            end
            list.subspec 'views' do |views|
              views.source_files = 'AFOHomePage/views/list/views/*.{h,m}' 
              views.public_header_files = 'AFOHomePage/views/list/views/*.h'         
            end
            list.subspec 'presenters' do |presenters|
              presenters.source_files = 'AFOHomePage/views/list/presenters/*.{h,m}' 
              presenters.public_header_files = 'AFOHomePage/views/list/presenters/*.h'         
            end
          end

          view.subspec 'play' do |play|
            play.subspec 'models' do |models|
              models.source_files = 'AFOHomePage/views/play/models/*.{h,m}' 
              models.public_header_files = 'AFOHomePage/views/play/models/*.h'
            end
            play.subspec 'views' do |views|
              views.source_files = 'AFOHomePage/views/play/views/*.{h,m}' 
              views.public_header_files = 'AFOHomePage/views/play/views/*.h'         
            end
            play.subspec 'presenters' do |presenters|
              presenters.source_files = 'AFOHomePage/views/play/presenters/*.{h,m}' 
              presenters.public_header_files = 'AFOHomePage/views/play/presenters/*.h'         
            end
          end

          view.subspec 'detail' do |detail|
            detail.subspec 'models' do |models|
              models.source_files = 'AFOHomePage/views/detail/models/*.{h,m}' 
              models.public_header_files = 'AFOHomePage/views/detail/models/*.h'
            end
            detail.subspec 'views' do |views|
              views.source_files = 'AFOHomePage/views/detail/views/*.{h,m}' 
              views.public_header_files = 'AFOHomePage/views/detail/views/*.h'         
            end
            detail.subspec 'presenters' do |presenters|
              presenters.source_files = 'AFOHomePage/views/detail/presenters/*.{h,m}' 
              presenters.public_header_files = 'AFOHomePage/views/detail/presenters/*.h'         
            end
          end
    end 

  s.subspec 'presenter' do |presenter|
        presenter.source_files = 'AFOHomePage/presenter/*.{h,m}' 
        presenter.public_header_files = 'AFOHomePage/presenter/*.h'  
    end 

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.resource_bundles = {
      'AFOHomePage' => ['AFOHomePage/AFOHomePage.bundle/*']
    }

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  s.dependency  "AFOViews"
  s.dependency  "AFOGitHub"
  s.dependency  "AFOFoundation"
  s.dependency  "AFOSchedulerCore"
  s.dependency  "AFORouter"
end
