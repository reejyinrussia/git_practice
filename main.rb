def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts '1: Enter Git Command'
  puts '2: Exit'
  choice = gets.to_i
  case choice
    when 1
      puts 'Enter a Git Command'
      puts_git(gets.strip)
    when 2
      puts 'Thanks for using the Git Command'
      exit
    else
      puts 'Invalid Choice'
      menu
  end
  menu
end

menu 
