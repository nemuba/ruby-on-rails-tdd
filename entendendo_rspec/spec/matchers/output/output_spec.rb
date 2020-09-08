describe "Matcher output" do
  it { expect { puts "Alef" }.to output.to_stdout } 
  it { expect { print "Alef" }.to output("Alef").to_stdout } 
  it { expect { print "Alef" }.to output(/Alef/).to_stdout } 

  it { expect { warn "Alef" }.to output.to_stderr } 
  it { expect { warn "Alef" }.to output("Alef\n").to_stderr } 
  it { expect { warn "Alef" }.to output(/Alef/).to_stderr } 
end
