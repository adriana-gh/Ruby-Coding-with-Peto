class DataExport

  def initialize(filename, type)
    @filename = filename
    @type = type
  end

  def generate
    puts "generating #{@filename}.#{@type} export file"
  end
end

class PdfExport < DataExport

  def initialize(filename)
    super(filename,'pdf')
  end
end

xls = DataExport.new('Exercise','xls')
xls.generate
pdf = PdfExport.new('Exercise')
pdf.generate
