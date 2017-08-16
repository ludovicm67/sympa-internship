SCRIPTS = $(wildcard scripts/*.sh)
DIARY_FILES = $(wildcard diary/*_*.md)
JAMES_FILES = $(wildcard docs/james/*_*.md)

diary.pdf: diary/headers.txt $(DIARY_FILES)
	@./scripts/diary.sh

doc_james.pdf: docs/james/headers.txt $(JAMES_FILES)
	@./scripts/james.sh

# Targets to call manually
.PHONY: diary
diary: diary.pdf

.PHONY: james
james: doc_james.pdf

.PHONY: exec
exec:
	chmod +x $(SCRIPTS)
