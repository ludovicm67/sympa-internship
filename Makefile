SCRIPTS = $(wildcard scripts/*.sh)
DIARY_FILES = $(wildcard diary/*_*.md)
JAMES_FILES = $(wildcard docs/james/*)
JMAP_FILES = $(wildcard docs/jmap/*)

diary.pdf: diary/headers.txt $(DIARY_FILES)
	@./scripts/diary.sh

doc_james.pdf: $(JAMES_FILES)
	@./scripts/james.sh

doc_jmap.pdf: $(JMAP_FILES)
	@./scripts/jmap.sh

# Targets to call manually
.PHONY: diary
diary: diary.pdf

.PHONY: james
james: doc_james.pdf

.PHONY: jmap
jmap: doc_jmap.pdf

.PHONY: exec
exec:
	chmod +x $(SCRIPTS)
