require 'rspec'
require 'word_count'

describe 'String#word_count' do

  it 'gives the sentence a zero for empty forms' do
    expect(''.word_count('')).to eq 0
  end

  it 'gives the sentence a zero for blank entry and one argument' do
    expect(''.word_count('hello')).to eq 0
  end

  it 'takes a string and counts the word' do
    expect('hello'.word_count('hello')).to eq 1
  end

  it 'takes a word that the user inputs and tells how many times the word will appear' do
    expect('today it was very sunny and today I am happy'.word_count('today')).to eq 2
  end

  it 'takes a word that the user inputs, even if capitalized, and tells how many times the word will appear' do
    expect('HAPPY'.word_count('happy')).to eq 1
  end
end
