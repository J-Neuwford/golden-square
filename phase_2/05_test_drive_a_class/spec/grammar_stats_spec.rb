require 'grammar_stats'

describe GrammarStats do
  it 'check passes' do
    stats = GrammarStats.new
    result = stats.check("Correct!")
    expect(result).to eq true
  end

  it 'check fails' do
    stats = GrammarStats.new
    result = stats.check("fail")
    expect(result).to eq false

  end

  it 'returns pass percentag' do
    stats = GrammarStats.new
    stats.check("Correct!")
    stats.check("fail")
    stats.check("fail")
    stats.check("fail")
    result = stats.percentage_good
    expect(result).to eq 25
  end

  it 'calls percentage_good with no checks' do
    stats = GrammarStats.new
    expect{ stats.percentage_good }.to raise_error "no check results"
  end
end