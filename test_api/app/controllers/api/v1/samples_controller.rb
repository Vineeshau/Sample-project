class Api::V1::SamplesController < ApplicationController

  def index
    page = params['page'].to_i || 1
    limit = params['length'].to_i || 10
    offset = (page - 1) * limit 
    direction = params['order']['0']['dir'] == 'desc' ? 'asc' : 'desc'
    column = params['order']['0']['column'].to_i
    set_column = ['name','place']

    if column >= 0 && set_column.length > column
      column_name = set_column[column]
    else
      column_name = 'id'
    end

    search = params["search"]["value"].downcase.strip
    if search.present?
      @records = Sample.order("#{column_name} #{direction}").offset(offset).limit(limit).order(:id).where("lower(name) LIKE? OR lower(place) LIKE?","%#{search}%","%#{search}%")
    else
      @records = Sample.order("#{column_name} #{direction}").offset(offset).limit(limit).order(:id)
    end
    @count = Sample.all.count
    render json: {
      data: @records,
      recordsTotal: @count,
      recordsFiltered: @count
    }
  #   @lines = Sample.datatable_filter(params['search']['value'], params['columns'])
  #   lines_filtered = @lines.count
  #   @lines = @lines.datatable_order(params['order']['0']['column'].to_i,
  #                                 params['order']['0']['dir'])
  #   @lines = @lines.page(params['start'].to_i + 1).per(params['length'])

  #   render json: { data: @lines,
  #                 draw: params['draw'].to_i,
  #                 recordsTotal: Sample.count,
  #                 recordsFiltered: lines_filtered }
  end
end
