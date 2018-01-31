describe x509_certificate('imap.mail.yahoo.com:993') do
  it { should be_valid }
  its('validity_in_days') { should_not be < 100 }
end
