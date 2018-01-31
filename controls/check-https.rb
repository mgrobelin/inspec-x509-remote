describe x509_certificate('google.li:443') do
  it { should be_valid }
  its('validity_in_days') { should_not be < 100 }
end

# google.li IPv4 from DE
describe x509_certificate('172.217.22.99:443') do
  it { should be_valid }
  its('issuer_dn') { should eq '/C=US/O=Google Inc/CN=Google Internet Authority G2' }
  its('subject_dn') { should eq '/C=US/ST=California/L=Mountain View/O=Google Inc/CN=google.com' }
end
