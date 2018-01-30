describe x509_certificate('google.li:443') do
  its('validity_in_days') { should_not be < 100 }
end
