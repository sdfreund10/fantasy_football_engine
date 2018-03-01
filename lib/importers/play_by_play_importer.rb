# frozen_string_literal: true

require 'csv'
class PlayByPlayImporter
  def import_files
    files.each do |file_name|
      import_data(file_name)
    end
  end

  def import_data(file)
    CSV.open(
      file, "r", headers: true, header_converters: -> (h) { h.underscore }
    ).each_slice(1_000) do |rows|
      Play.import rows.map { |row| row.to_hash.except(nil) }
    end
  end

  def files
    Dir[Rails.root.join("data", "pbp*")]
  end
end
