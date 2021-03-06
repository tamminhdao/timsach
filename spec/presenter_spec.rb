require 'spec_helper'

describe Presenter do
  it 'takes an array of books objects and presents them in readable string' do
    presenter = Presenter.new
    sapiens = Book.new(title: 'Sapiens', author: 'Harari', publisher: 'Harper Publishing')
    poodr = Book.new(title: 'POORD', author: 'Sandi Metz', publisher: 'MIT')
    data = [sapiens, poodr]
    result = presenter.present(data)
    formatted_list = "1. Sapiens - Harari - Harper Publishing\n2. POORD - Sandi Metz - MIT"

    expect(result).to eq(formatted_list)
  end
end
