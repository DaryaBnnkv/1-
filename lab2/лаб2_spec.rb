require 'rspec'
require './lab2.rb'

RSpec.describe "Main" do

  it "#word_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('DaryaCS')
    expect(check_word).to eq(255)
  end

  it "#word_test_2" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Darya')
    expect(check_word).to eq("ayraD")
  end

  it "#pokemon_test" do
  		allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Pikachu", "Yellow", "Slowpoke", "Pink")
  		expect(create_pokemons).to eq([{ "Pikachu" => "Yellow" }, { "Slowpoke" => "Pink" }])
  	end

end
