require 'rails_helper'

describe Directory::EmployeeFetch do
    describe '#by_netids' do

        let(:directory_employee_rank) { FactoryBot.create(:directory_employee_rank) }

        before(:each) do
            @employee = FactoryBot.create(:directory_employee, {status_id: 1, rank_id: directory_employee_rank.id})
            @employee2 = FactoryBot.create(:directory_employee, {status_id: 1, rank_id: directory_employee_rank.id})
            @employee3 = FactoryBot.create(:directory_employee, {status_id: 1, rank_id: directory_employee_rank.id})
        end

        it 'returns one record for a single netid' do
            single_employee = Directory::EmployeeFetch.by_netids([@employee.netid])
            expect(single_employee[0].netid).to eq(@employee.netid)
        end

        it 'returns multiple records if multiple netids are submitted' do
            multiple_employees = Directory::EmployeeFetch.by_netids([@employee.netid, @employee3.netid])
            expect(multiple_employees[1].netid).to eq(@employee3.netid)
            expect(multiple_employees[0].netid).to eq(@employee.netid)
        end

        it 'returns the correct number of records if all netids match' do
            multiple_employees = Directory::EmployeeFetch.by_netids([@employee.netid, @employee2.netid, @employee3.netid])
            expect(multiple_employees.count).to eq(3)
        end

        it 'only returns records for matched netids' do
            multiple_employees = Directory::EmployeeFetch.by_netids([@employee.netid, 'not-netid', @employee3.netid]) 
            expect(multiple_employees.count).to eq(2)
        end
    end
end