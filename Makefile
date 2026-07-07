all:
	rm -rf vendor
	composer install --no-dev
	# Cleanup useless files
	find vendor  -type f -not -name '*.php' -not -name '*.json' -not -name '*.xml' -not -name '*.xsd' -not -name '*.xmp' -not -name '*.icc' -not -name 'LICENSE*' -delete
	rm -rf vendor/setasign/fpdf/{makefont,tutorial,doc}
	rm -rf vendor/smalot/pdfparser/.github
	rm -rf vendor/atgp/factur-x/tests
	rm -rf vendor/setasign/fpdf/tutorial
	rm -rf vendor/setasign/fpdf/makefont
	rm -rf vendor/setasign/fpdf/font
	rm -rf vendor/atgp/factur-x/.php-cs-fixer.dist.php
	find vendor -type f -name '*.xsd' -delete
	find vendor -type f -name '*.xml' -delete
	rm -rf vendor/atgp/factur-x/src/XsdValidator.php
	# mbstring polyfill not required
	rm -rf vendor/symfony