require 'rspec'
	require './task1.rb'
	
	RSpec.describe "task1" do
	  before {File.write(RESULTS_LIST , "Julia Roberts\n Nicole Kidman \n Beyonce \n Leonardo DiCaprio")}
	  
	  it "#index"do
	    expect{index}.to output("Julia Roberts\n Nicole Kidman \n Beyonce \n Leonardo DiCaprio \n").to_stdout
	  end
	
	  it "#where" do
	    expect(where("Nicole Kidman")).to eq(1)
	  End
	
	  it "#update" do
	    update(0, "Darya Bannikova")
	    expect{index}.to output("Darya Bannikova \n Nicole Kidman \n Beyonce \n Leonardo DiCaprio \n").to_stdout
	  End
	
	  it "#delete" do
	    delete(0)
	    expect{index}.to output("Nicole Kidman \n Beyonce \n Leonardo DiCaprio \n").to_stdout
	  end
	
	  it "#find" do
	    expect{find(2)}.to output("Beyonce\n").to_stdout
	  end
	end

