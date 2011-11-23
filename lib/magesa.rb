# set up an environment variable to tell app where to find wkhtmlpdf binary
ENV['MAGESA_PATH'] = [ ENV['GEM_PATH'], 'magesa-0.1.0', 'bin', 'wkhtmltopdf-amd64' ].join("/")
# TODO: make the version dynamic by reading VERSION
