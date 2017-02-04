class AddReferencesToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_reference :blogs, :usuario, foreign_key: true
  end
end
