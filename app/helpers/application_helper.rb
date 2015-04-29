module ApplicationHelper
  def clients_keys
    Client.first_and_last_names
  end

  def show_remaining_time(payment_date)
    current_date = DateTime.now.utc
    paymentdate  = DateTime.new(payment_date.year,payment_date.month,payment_date.day, Time.now.hour, Time.now.min, Time.now.sec)
    if paymentdate.to_date >= current_date.to_date
      if paymentdate.to_date == current_date.to_date
        days_string = "La cuota vence hoy"
      else
        diff_in_days = (paymentdate - current_date).to_i
        days_string = diff_in_days.to_s
        days_string += (diff_in_days > 1) ? ' Dias' : ' Dia'
      end
      return days_string
    else
      diff_in_HMS = (((current_date - paymentdate) * 24).round).to_s
      diff_in_HMS += diff_in_HMS.first(2).to_i > 0 ? " horas" : " minutos"
      return diff_in_HMS
    end
  end
end
