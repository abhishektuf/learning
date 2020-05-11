from datetime import datetime,timedelta,date
from dateutil.relativedelta import relativedelta
birthday_input = input('Your birthday please [dd/mm/yyyy]: ')

def agecalc(birthday):
    birthday_date = datetime.strptime(birthday,'%d/%m/%Y')
    today = date.today()
    rdelta = relativedelta(today, birthday_date)
    # months = ((today.month, today.day) < (birthday_date.month, birthday_date.day))
    # print(months)
    # age_year = today.year - birthday_date.year - months
    return rdelta

age_calculated = agecalc(birthday_input)
print('You are', age_calculated.years, 'years', age_calculated.months,'months', age_calculated.days, 'days older today')
print('Today is',date.today())
# print('Your age is',age_calculated,'years')