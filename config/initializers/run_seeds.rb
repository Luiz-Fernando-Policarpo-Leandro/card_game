unless Rails.cache.read('seeds_executed')
    Rails.application.config.to_prepare do
      puts 'Executando db:seed...'
      system('bin/rails db:seed')
      Rails.cache.write('seeds_executed', true)
    end
  end
  