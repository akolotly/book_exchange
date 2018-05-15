require 'rails_helper'

describe Book, type: :model do
  subject { Book.new(title: 'Приключения Алисы в Стране чудес') }

  describe '#valid?' do
    context 'When all attributes is present' do
      it 'answer methods' do
        is_expected.to respond_to(:title)
      end
    end
  end

  it { is_expected.to be_valid }

  describe 'Validation' do
    context 'When title is empty' do
      it 'not be valid' do
        subject.title = ' '
        is_expected.not_to be_valid
      end
    end
  end
end
