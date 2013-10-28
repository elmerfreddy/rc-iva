RcIva.ApplicationController = Ember.ArrayController.extend
  afp: (->
    salary = @get('salary') || 0
    salary * 0.1271
  ).property('salary')

  netSalary: (->
    @get('salary') - @get('afp') || 0
  ).property('salary', 'afp')

  salaryMinimun: 2400

  differenceAB: (->
    ab = @get('netSalary') - @get('salaryMinimun')
    ab = 0 if ab < 0
    ab || 0
  ).property('netSalary', 'salaryMinimun')

  taxC: (->
    @get('differenceAB') * 0.13 || 0
  ).property('differenceAB')

  taxB: (->
    @get('salaryMinimun') * 0.13 || 0
  ).property('salaryMinimun')

  taxDE: (->
    de = @get('taxC') - @get('taxB')
    de = 0 if de < 0
    de || 0
  ).property('taxC', 'taxB')

  amountBilling: (->
    @get('taxDE') * 100 / 13 || 0
  ).property('taxDE')
