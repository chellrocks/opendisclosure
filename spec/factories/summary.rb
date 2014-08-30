FactoryGirl.define do
  factory :summary do
    trait :from_json do
      initialize_with do
        JSON.parse(<<-RESPONSE)
          {
            "rpt_date": "2014-06-22T00:00:00",
            "committee_type": "CTL",
            "filer_id": "1367207",
            "rec_type": "SMRY",
            "form_type": "F460",
            "thru_date": "2014-06-30T00:00:00",
            "line_item": "1",
            "from_date": "2014-01-01T00:00:00",
            "filer_naml": "Charles R. Williams for Mayor of Oakland 2014",
            "amount_a": "10635",
            "report_num": "2",
            "amount_b": "10635",
            "elect_date": "2014-11-04T00:00:00"
          } 
        RESPONSE
      end
    end
  end
end
