mv "$(find . -mindepth 1 -type d -print -quit)" "$(LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c 13)";
git commit -m "moved";
git push origin main;