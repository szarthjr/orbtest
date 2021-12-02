pack:
	circleci config pack src > orb.yml

alpha: pack
	circleci orb publish orb.yml szarthjr/orbtest@dev:alpha
	rm -rf orb.yml

dev: pack
	circleci orb publish orb.yml szarthjr/orbtest@dev:${VERSION}
	rm -rf orb.yml