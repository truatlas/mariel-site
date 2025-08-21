#!/bin/bash

# Проходим по всем md-файлам кроме _index.md
find . -type f -name "*.md" ! -name "_index.md" | while read file; do
  # Убираем все \ в строках description и summary
  sed -i -E 's/^(description:.*)\\(.*)/\1\2/' "$file"
  sed -i -E 's/^(summary:.*)\\(.*)/\1\2/' "$file"
done

echo "Готово! Все лишние слеши в description и summary удалены."
