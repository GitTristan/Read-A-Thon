require 'spec_helper'

describe Book, "validation" do
  it "is valid when it has a title attribute" do
    book = Book.new title: "Something"
    book.valid?
    expect(book.errors[:title].empty?).to be_true
  end
  
  it "is invalid when it is missing a title attribute" do
    book = Book.new
    book.valid?
    expect(book.errors[:title].empty?).to be_false
  end
  
  it "is valid when it has a pages attribute" do
    book = Book.new pages: 250, title: "Something"
    book.valid?
    expect(book.errors[:pages].empty?).to be_true
  end
  
  it "is invalid when it is missing a pages attribute" do
    book = Book.new
    book.valid?
    expect(book.errors[:pages].empty?).to be_false
  end
end
