class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    @tables = Table.all
  end

end
