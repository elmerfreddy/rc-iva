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
    @get('solidarityContribution')
  ).property('solidarityContribution')

  amountTotal: (->
    @get('sipTotal') + @get('solidarityTotal')
  ).property('sipTotal', 'solidarityTotal')
