require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "UnicornFormatter" do

  before :each do
    @console = StringIO.new
    @unicorn = UnicornFormatter.new(@output)
  end
  it "overrides the close method" do
    expect(@unicorn).to respond_to(:close)
  end

  it "executes the unicornleap command when the close is called without failures" do
    @unicorn.close
  end

  it "doesn't execute the unicornleap command when the close is called with failures" do
    @unicorn.stub(:failure_count) { 2 }
    @unicorn.close
  end

  it "YOU SHOULD ONLY SEE 1 UNICORN" do
    puts "YOU SHOULD ONLY SEE 1 UNICORN"
  end
end