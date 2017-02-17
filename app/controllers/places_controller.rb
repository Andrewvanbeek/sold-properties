class PlacesController < ApplicationController


  def index
    @places = []
    session = GoogleDrive::Session.from_config("config.json")
    sheets = session.spreadsheet_by_key("1hUau1GGMz2IMwSvDxOvU60zMNCjy_A4cT-Ag_6JNomM").worksheets
    sheets.each do |sheet|
      sheet.rows.each do |row|
        @places << Place.new(title: row[7], latitude: row[6], longitude: row[5], date: row[0][-4..-1])
      end
    end
  end

end