#! SIMPLE COMMANDS
#! ANSI COLOUR CODES
ORANGE=\033[0;33m
GREEN=\033[38;5;35m
PURPLE=\033[0;35m

#! FUNCTION TO CREATE A BOX AROUND A TEXT
define box
	@echo "$(GREEN)╔══════════════════════════════════════╗$(ORANGE)"
	@echo "$(GREEN)║$(ORANGE) $1$(GREEN) ║$(ORANGE)"
	@echo "$(GREEN)╚══════════════════════════════════════╝$(ORANGE)"
endef


.PHONY: runHTML deploy cleanAndGet

runHTML:

deploy:
	flutter clean && flutter pub get && flutter build web --release --web-renderer canvaskit && firebase deploy
	$(call box,$(ORANGE)::: DEPLOY TO FIREBASE COMMAND  $(PURPLE)==>> $(GREEN)Done)

cleanAndGet:
	flutter clean && flutter pub get && clear
	$(call box,$(ORANGE)::: CLEAN AND GET COMMAND $(PURPLE)==>> $(GREEN)Done.)

analyze:
	flutter analyze