deploy:
	serverless deploy --no-confirm --stage dev

keys:
	openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048
	openssl rsa -pubout -in private_key.pem -out public_key.pem

install:
	composer install
	make keys