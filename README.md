# HymnDB-iOS

In order to compile & run, must install
- Cocoa Pods
- Carthage
- Alamofire
- Materials
- PDFReader


To install Cocoa Pods:
1) Pull latest repo, make sure you have a Podfile & Podfile.lock
2) In command line, navigate into your local repo until you are in the same file as the xcode project
3) Type the following commands consecutively: 
    
        1) sudo gem install cocoapods
        2) pod setup
        3) pod init

4) Find the actual folder where your local repo is located
5) Find your Podfile
6) Open it with a text editor, and change it so that it only contains:

		# Uncomment the next line to define a global platform for your project
		# platform :ios, '9.0'

		source 'https://github.com/CocoaPods/Specs.git'

		target 'HymnDBFinal' do
			pod 'Alamofire', '~> 4.7'
			pod 'MaterialComponents'
			pod 'PDFReader'
			use_frameworks!
				 
			# Pods for HymnDBFinal

		end


7) In command line, type:
				
		pod install 

8) A podfile should be created & is located in your repo

# To install Cathage:
1) Pull latest repo, make sure you have a Cartfile
2) Install Homebrew by typing in command line:

		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2) In command line, navigate into your local repo until you are in the same file as the xcode project
3) Use Homebrew to install Carthage by typing:

    	brew install carthage

4) Navigate to the file containing your local repo
5) Find your Cartfile 
6) Open it with a text editor, and change it so that it only contains:

		github "Alamofire/Alamofire" ~> 4.7
		github "CosmicMind/Material"




