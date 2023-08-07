build:
	docker build -t master-prover .

run:
	docker run -it --net host -v ./:/workdir master-prover tamarin-prover interactive --with-maude=/maude/maude.linux64 .

run-docker-interactive:
	tamarin-prover interactive --interface=*4 --with-maude=/maude/maude.linux64 ./protocols/PATAT_*.spthy

run-interactive:
	tamarin-prover interactive --with-maude=/maude/maude.linux64 ./protocols/PATAT_*.spthy

prove-everything:
	tamarin-prover --prove --with-maude=/maude/maude.linux64 ./protocols/PATAT_*.spthy

prove-sanity:
	tamarin-prover --prove=sanity_* --with-maude=/maude/maude.linux64 ./protocols/PATAT_*.spthy

prove-security:
	tamarin-prover --prove=security_* --with-maude=/maude/maude.linux64 ./protocols/PATAT_*.spthy

prove-payload:
	tamarin-prover --prove=payload_* --with-maude=/maude/maude.linux64 ./protocols/PATAT_*.spthy

prove-all-auth:
	tamarin-prover --prove --with-maude=/maude/maude.linux64 ./protocols/PATAT_Authorization.spthy

prove-all-secrecy:
	tamarin-prover --prove --with-maude=/maude/maude.linux64 ./protocols/PATAT_Secrecy.spthy
