# Show help for all targets
.PHONY: help
help: ## Show help for all targets
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'


.PHONY: format-context
format-context: ## Fix markdown in context/
	markdownlint-cli2 --fix 'context/**/*.md'

.PHONY: format-outputs
format-outputs: ## Fix markdown in outputs/
	markdownlint-cli2 --fix 'outputs/**/*.md'

.PHONY: format-plans
format-plans: ## Fix markdown in plans/
	markdownlint-cli2 --fix 'plans/**/*.md'

.PHONY: format-reference
format-reference: ## Fix markdown in reference/
	markdownlint-cli2 --fix 'reference/**/*.md'

.PHONY: format-research
format-research: ## Fix markdown in research/
	markdownlint-cli2 --fix 'research/**/*.md'

.PHONY: format-root
format-root: ## Fix markdown in root-level files
	markdownlint-cli2 --fix '*.md'

.PHONY: prettier-fix
prettier-fix: ## Fix markdown line wrapping with prettier
	prettier --write '**/*.md'

.PHONY: format
format: prettier-fix format-context format-outputs format-plans format-reference format-research format-root ## Format and fix all markdown files
