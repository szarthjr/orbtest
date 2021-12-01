alpha:
	circleci config pack src > orb.yml
	circleci orb publish orb.yml szarthjr/orbtest@dev:alpha
	rm -rf orb.yml