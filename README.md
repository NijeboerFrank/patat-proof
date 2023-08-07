# PATAT Proofs

This repository contains the proofs for the Platform ATtestation for Arm TrustZone (PATAT) Protocol.
The code makes use of the [Tamarin Prover](https://tamarin-prover.github.io/) for generating the proofs.

## Setup

To simplify the setup for new developers, or people who want to run the proofs themselves, we have created
a `Dockerfile` and a `docker-compose.yml` file to get started. Simply running `docker compose up` should do
the trick on Linux-based systems.

> Note that this repo has not been tested on Windows, so your mileage may vary

## The Interactive prover

After running `docker compose up`, a website should be available at http://localhost:3001. From there, you
can navigate to the file in which you want to run the proofs and you can auto-proof the lemmas in there.

Simply click on a `sorry` at the lemma you want to check, and click autoproof to let Tamarin figure the proof out for you.

## Dev Containers

If you are using Visual Studio Code, it should give you the option to launch the project in a so-called dev container.
Simply open the repository in VSCode and click on the popup that opens in the bottom left of the window.
