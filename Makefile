SCRIPTS = $(wildcard scripts/*.sh)
DIARY_FILES = $(wildcard diary/*_*.md)

diary.pdf: diary/headers.txt $(DIARY_FILES)
	@./scripts/diary.sh

# Targets to call manually
.PHONY: diary
diary: diary.pdf

.PHONY: exec
exec:
	chmod +x $(SCRIPTS)
