require 'rspec'
require './2.rb'

RSpec.describe "task2" do
  before(:each) do
    File.write(OUTPUT_FILE_PATH, "")
  end

  it "#witout negative number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 19, 19, 23, 21, 17, 22, 18, 30, 33, 25)
    expect{read_students}.to output(" Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Age of student  \n  Bannikova Darya 19 \n  Potapov Vlad 19  \n  Chaila Valeriya 19  \n  Savina Veronika 23  \n  Bodryakova Katya 21  \n  Hudina Dasha 17 \n Popukalov Maxim 22 \n Artemev Leonid 18 \n Kirushev Maxim 30 \n Serova Zoya 33 \n Serditov Kirill 25 \n ").to_stdout
  end

  it "#with negative number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return( 23, -1)
    expect{read_students}.to output(" Age of student  \n  Age of student  \n  Age of student  \n You entered -1 (exit) \n  Savina Veronika 23 \n ").to_stdout
  end

  it "#straightaway negative number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(-1)
    expect{read_students}.to output(" Age of student  \n You entered -1 (exit) \n ").to_stdout
  end
end
