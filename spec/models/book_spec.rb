require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'trueである時、trueになること' do
    expect(true).to eq(true)
  end

  it 'Bookモデルをnewしたとき、nilでないこと' do
    expect(Book.new).not_to eq(nil)
  end

  describe 'Book#title_with_author' do            # describe: メソッド名
    context 'Book#titleが文字列のとき' do           # context: 〇〇のとき
      before do
        @book = Book.new(title: "RubyBook", author: "matz")
      end
      it 'titleとauthorを結んだ文字列が返ること' do   # it: 〇〇すること
        expect(@book.title_with_author).to eq("RubyBook - matz")
      end
    end
    context 'Book#titleがnilのとき' do                # context: 〇〇のとき
      before do
        @book = Book.new(title: nil, author: "matz")
      end
      it '空のtitleとauthorを結んだ文字列が返ること' do   # it: 〇〇すること
        expect(@book.title_with_author).to eq(" - matz")
      end
    end
  end
end
