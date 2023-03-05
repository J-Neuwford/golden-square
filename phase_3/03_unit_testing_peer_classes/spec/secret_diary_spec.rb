require 'secret_diary'

describe SecretDiary do
  context 'read method called on secret_diary instance' do
    it 'raises the error if the diary is locked' do
      diary = double :diary, read: "A secret diary entry"
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"   
    end

    it "returns the diary's contents if the diary is unlocked" do
      diary = double :diary, read: "A secret diary entry"
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "A secret diary entry"
    end

    it "locks the diary after unlocking it" do
      diary = double :diary, read: "A secret diary entry"
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!" 
    end
  end

end