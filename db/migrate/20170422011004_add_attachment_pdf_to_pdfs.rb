class AddAttachmentPdfToPdfs < ActiveRecord::Migration[5.0]
  def self.up
    change_table :pdfs do |t|
      t.attachment :pdf
    end
  end
 
  def self.down
    remove_attachment :authors, :avatar
  end
end