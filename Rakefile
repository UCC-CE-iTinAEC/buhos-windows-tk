load("../buhos/version.rb")

inno_compiler="E:/Inno Setup 5/ISCC.exe"

task default: %w[build]

build_file="windows_installer/Buhos-#{Buhos::VERSION}.exe"

desc "Build the executable"
task :build=>[build_file]

desc "Clean old gems"
task :clean_gems do 
	sh "gem.bat cleanup"
end

desc "Fix ruby executables, make them relative"
task :fix_executables do 
	sh "ruby.bat fix_batch_files.rb"
end


file build_file => [:inno_setup] do
	sh "\"#{inno_compiler}\" buhos_install.iss"
end

desc "Inno Setup installer"
task :inno_setup => "buhos_install.iss"

desc "Update buhos_install.iss"
file "buhos_install.iss" => ["buhos_install.erb", "create_iss.rb","../buhos/version.rb"] do
	sh "ruby.bat create_iss.rb"
end
