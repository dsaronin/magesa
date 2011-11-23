# set up an environment variable to tell app where to find wkhtmlpdf binary
version = File.exist?('VERSION') ? File.read('VERSION') : "0.1.2"

gem_path = ( ENV['GEM_PATH'].blank?  ?  
            ENV['PATH'].split(':').first.sub(/\/bin/,"/gems")   :  
            ENV['GEM_PATH'] 
      )
ENV['MAGESA_PATH'] = [ gem_path, "magesa-#{version}", 'bin', 'wkhtmltopdf-amd64' ].join("/")
