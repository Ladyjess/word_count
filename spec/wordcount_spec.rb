require 'rspec'
require 'wordcount'

describe 'String#word_count' do

  it 'takes a string and counts the word' do
    expect('hello'.word_count('hello')).to eq 1
  end

  it 'takes a word that the user inputs and tells how many times the word will appear' do
    expect('Today it was very sunny and today I am happy'.word_count('today')).to eq 2
  end

  it 'gives the sentence a zero for empty forms' do
    expect(''.word_count('hi')).to eq 0
  end
end
