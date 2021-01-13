module Directory::EmployeeFetch
    def self.by_netids(netids)
        @employee_list = []
        for netid in netids
            employee = DirectoryEmployee.by_netid(netid)
            if !employee.empty?
                @employee_list.push(employee[0])
            end
        end
        @employee_list
    end
end