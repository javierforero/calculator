def sum_diff_div_prod(array, operation)
  array.each do |element|
    if element.include? '+'
    sum = element.split('+')
    array[array.index(element)] = sum.map(&:to_i).inject(:+)

    elsif element.include? '-'

      dif = element.split('-')
      array[array.index(element)] = dif.map(&:to_i).inject(:-)

    elsif element.include? '/'
      div = element.split('/')
      array[array.index(element)] = div[1].to_i == 0 ? "can't divide by zero!": div[0].to_f/div[1].to_f
    elsif element.include? '*'
      div = element.split('*')
      array[array.index(element)] = div[0].to_i * div[1].to_i
    end
  end

  array[0].to_f.send(operation, array[1].to_f)
end

def even_split(input)

  if (input.split('*').length > 2 || input.split('*').length == 2) && input[/[+\/-]/] == nil

      input.split('*').map(&:to_i).inject(:*)
  elsif (input.split('/').length >  2 || input.split('/').length == 2) && input[/[*+-]/] == nil
      puts input
      input.split('/').map(&:to_f).inject(:/)
  elsif (input.split('+').length >  2 || input.split('+').length ==  2) && input[/[*\/-]/] == nil

      input.split('+').map(&:to_i).inject(:+)
  elsif input.split('*')[0].split('').length == input.split('*')[1].split('').length

    sum_diff_div_prod(input.split('*'), '*')
  elsif input.split('/')[0].split('').length == input.split('/')[1].split('').length

    sum_diff_div_prod(input.split('/'), '/')
  elsif input.split('+')[0].split('').length == input.split('+')[1].split('').length

    sum_diff_div_prod(input.split('+'), '+')
  elsif input.split('-')[0].split('').length == input.split('-')[1].split('').length

    sum_diff_div_prod(input.split('-'), '-')
  else
    nil
  end
end
