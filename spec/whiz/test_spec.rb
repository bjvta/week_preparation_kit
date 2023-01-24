
require './lib/whiz/exampple.rb'


RSpec.describe 'Whiz Challenge' do
  it 'should work with a smaller array' do
    arr = [1,1,2,2]
    result = solution(arr)
    expected_result = { '1' => 2, '2' =>2 }
    expect(result).to eq(expected_result)
  end
end


User
id
name

Result
id
marks
course_name


Result 


select u.name
from result as r
inner join user as u
  u.id = u.user_id
where marks > 60 


select r.user_id, SUM(r.marks)
from result as r
inner join user as u
  u.id = u.user_id
group by r.user_id

select *
from user
where id in (
  select r.user_id, SUM(r.marks)
             from result as r
              group by r.user_id
)

