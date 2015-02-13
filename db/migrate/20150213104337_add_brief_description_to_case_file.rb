class AddBriefDescriptionToCaseFile < ActiveRecord::Migration
  def change
    add_column :case_files, :brief_description, :string
    add_column :case_files, :associated_case_urns, :string
  end
end
