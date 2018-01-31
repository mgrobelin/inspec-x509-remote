# unresolvable hostname
describe x509_certificate('does.not.exist.example.com:993') do
  its('validity_in_days') { should_not be < 100 }
end

# invalid IP address
describe x509_certificate('256.0.0.0:993') do
  its('validity_in_days') { should_not be < 100 }
end

# missing port
describe x509_certificate('imap.mail.yahoo.com') do
  its('validity_in_days') { should_not be < 100 }
end
