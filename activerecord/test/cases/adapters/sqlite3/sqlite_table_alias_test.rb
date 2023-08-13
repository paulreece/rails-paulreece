# frozen_string_literal: true

require "cases/helper"
require "support/connection_helper"
require "models/aircraft"

module ActiveRecord
  class SQLiteTableAliasTest < ActiveRecord::SQLite3TestCase
    test "it should create record with custom arel_table.table_alias" do
      Aircraft.create!
    end

    test "it should update record with custom arel_table.table_alias" do
      aircraft = Aircraft.create!
      aircraft.name = "foo"
      aircraft.save!
    end

    test "it should delete record with custom arel_table.table_alias" do
      aircraft = Aircraft.create!
      aircraft.delete
    end
  end
end
