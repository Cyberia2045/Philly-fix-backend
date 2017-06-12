class AddDispatcherVerificationToDispatchers < ActiveRecord::Migration[5.1]
  def change
    add_column :dispatchers, :dispatcher_verification, :string
  end
end
