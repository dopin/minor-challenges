play:
	pry -r ./benchmark.rb
build:
	docker build -t dopin/minor-challanges-ruby-flatten-vs-concat .
run: build
	docker run --rm dopin/minor-challanges-ruby-flatten-vs-concat
pry: build
	docker run -it --rm dopin/minor-challanges-ruby-flatten-vs-concat pry -r ./benchmark.rb
test: build
	docker run --rm dopin/minor-challanges-ruby-flatten-vs-concat ruby test.rb -v
