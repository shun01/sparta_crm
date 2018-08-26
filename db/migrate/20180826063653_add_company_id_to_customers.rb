class AddCompanyIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :company, foreign_key: true
  end
end
