# set up an environment variable to tell app where to find wkhtmlpdf binary
version = File.exist?('VERSION') ? File.read('VERSION') : "0.1.5"

gem_path = ( ENV['GEM_PATH'].blank?  ?  
            ENV['PATH'].split(':').first.sub(/\/bin/,"")   :  
            ENV['GEM_PATH'].split(':').first 
      )

ENV['MAGESA_PATH'] = [ gem_path, "gems", "magesa-#{version}", 'bin', 'wkhtmltopdf-amd64' ].join("/")

