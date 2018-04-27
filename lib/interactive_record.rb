require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  def self.table
    self.to_s.downcase.pluralize
  end

  def self.column_names
    DB[:conn].results_as_hash = true

    sql = "pragma table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    column_names = []
    table_info.each do |row|
      column_names << row["name"]
    end
    column_names.compact
  end

  def initialize

  end

  def save

  end

  def table_names_for_insert

  end

  def values_for_insert

  end

  def column_names_for_insert

  end

  def self.find_by

  end

end
