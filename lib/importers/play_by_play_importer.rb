# frozen_string_literal: true

require 'csv'
class PlayByPlayImporter
  def import_files
    unzip_files do |file_name|
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

  def unzip_files
    zip = Zip::File.open("data/play_by_play.zip")
    zip.each do |entry|
      file = entry.name
      entry.extract(file)
      yield file
    ensure
      FileUtils.rm_f(file) if File.exists?(file)
    end
  end
end
