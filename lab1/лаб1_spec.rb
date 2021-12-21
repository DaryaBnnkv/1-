require 'rspec'
require './lab1.rb'

RSpec.describe "Main" do

  it "#greeting_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Darya', 'Bannikova', 16)
    expect(greeting).to eq("Hi, Darya Bannikova. You are less then 18, but starting programming is never early")
  end

  it "#greeting_test_2" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Darya', 'Bannikova', 19)
    expect(greeting).to eq("Hello, Darya Bannikova. Time to work!")
  end

  it "#foobar_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(3, 4)
    expect(foobar).to eq(7)
  end

  it "#foobar_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(3, 20)
    expect(foobar).to eq(20)
  end

end
