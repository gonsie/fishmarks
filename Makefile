INSTALL_DIR=~/.config/fish

all:
	@echo "Please run 'make install'"

install:
	@echo ""
	mkdir -p $(INSTALL_DIR)/functions
	mkdir -p $(INSTALL_DIR)/completions
	cp functions/*.fish $(INSTALL_DIR)/functions/
	cp completions/*.fish $(INSTALL_DIR)/completions/
	@echo ""
	@echo ''
	@echo 'USAGE:'
	@echo '------'
	@echo 's <bookmark_name> - Saves the current directory as "bookmark_name"'
	@echo 'c <bookmark_name> - Goes (cd) to the directory associated with "bookmark_name"'
	@echo 'c                 - Go to the $$HOME directory (cd ~)'
	@echo 'p <bookmark_name> - Prints the directory associated with "bookmark_name"'
	@echo 'd <bookmark_name> - Deletes the bookmark'
	@echo 'l                 - Lists all available bookmarks'
