describe x509_certificate('imap.gmail.com:993') do
  its('validity_in_days') { should_not be < 100 }
end
