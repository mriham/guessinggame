.PHONY: all

all:
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "## Project Information" >> README.md
	@echo "" >> README.md
	@echo "Date and time of make execution:" >> README.md
	@powershell -NoProfile -Command "Get-Date -Format 'dd/MM/yyyy HH:mm:ss'" >> README.md
	@echo "" >> README.md
	@echo "Number of lines in guessinggame.sh:" >> README.md
	@powershell -NoProfile -Command "(Get-Content guessinggame.sh).Count" >> README.md
