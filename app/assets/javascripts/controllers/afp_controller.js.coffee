RcIva.AfpController = Ember.ArrayController.extend
  monthlyQuotation: (->
    salary = @get('salary') || 0
    salary * 0.10
  ).property('salary')

  commission: (->
    salary = @get('salary') || 0
    salary * 0.005
  ).property('salary')

  additionalContribution: 0

  commonRiskPremium: (->
    salary = @get('salary') || 0
    salary * 0.0171
  ).property('salary')

  occupationalRiskPremium: (->
    salary = @get('salary') || 0
    salary * 0.0171
  ).property('salary')

  solidarityContribution: (->
    salary = @get('salary') || 0
    salary * 0.005
  ).property('salary')

  sipTotal: (->
    @get('monthlyQuotation') + @get('commission') + @get('additionalContribution') + @get('commonRiskPremium') + @get('occupationalRiskPremium')
  ).property('monthlyQuotation', 'commission', 'additionalContribution', 'commonRiskPremium', 'occupationalRiskPremium')

  solidarityTotal: (->
    @get('solidarityContribution') + @get('thirteenThousand') + @get('twentyFiveThousand') + @get('thirtyFiveThousand')
  ).property('solidarityContribution', 'thirteenThousand', 'twentyFiveThousand', 'thirtyFiveThousand')

  amountTotal: (->
    @get('sipTotal') + @get('solidarityTotal')
  ).property('sipTotal', 'solidarityTotal')

  # amount without AFP
  amountToPay: (->
    salary = @get('salary') || 0
    salary - @get('amountTotal')
  ).property('salary', 'amountTotal')

  thirteenThousand: (->
    salary = @get('salary') || 0
    if 13000 < salary && salary < 25000
      (salary - 13000) * 0.01
    else
      0
  ).property('salary')

  twentyFiveThousand: (->
    salary = @get('salary') || 0
    if 25000 < salary && salary < 35000
      (salary - 25000) * 0.05
    else
      0
  ).property('salary')

  thirtyFiveThousand: (->
    salary = @get('salary') || 0
    if 35000 < salary
      (salary - 35000 ) * 0.1
    else
      0
  ).property('salary')
