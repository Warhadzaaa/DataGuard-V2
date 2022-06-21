class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    @tables = Table.all
  end

  def set_table
    reset_table
    @employees = @employees.shuffle
    @tables = Table.all

    @employees.each do |employee|

      @tables.each do |table|
        table_employees = Employee.where(table_id: table)

        if table_employees.empty?
          employee.table_id = table.id
          employee.save!
        else
          employees_unit = []
          table_employees.each do |emp|
            employees_unit << emp.unit
          end
          if employees_unit.exclude?(employee.unit)
            employee.table_id = table.id
            employee.save!
          end
        end

      end

    end
    redirect_to employees_path
  end

  private

  def reset_table
    @employees = Employee.all
    @employees.each do |employee|
      employee.table_id = 1
      employee.save!
    end
  end

end
