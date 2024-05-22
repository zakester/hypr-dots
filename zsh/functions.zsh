# Bug bounty function
httpsub() {
  subfinder -d "$@" | httpx | tee
}

url() {
  domain=$(basename $(pwd))
  (waybackurls "$domain" > wayback.txt) & (gau "$domain" > gau.txt)
  cat wayback.txt gau.txt | sort | uniq > urls.txt
}

# Android Bug bounty.
reverse() {
  echo "[Running] apktool, dex2jar";
  (apktool d app.apk -o apktool/) & (dex2jar app.apk)
  echo "Done";
}

# Functions
take() {
	mkdir "$@" && cd "$@"
}

super() {
	sudo -i
}

nvim-fzf() {
	p=$(fzf)
	
	# Check if `p` is not empty.
	if [ -n "$p" ]; then
		nvim "$p"
	fi
}

imv-fzf() {
	p=$(fzf)
	
	# Check if `p` is not empty.
	if [ -n "$p" ]; then
		imv "$p"
	fi
}

cd-fzf() {
  current_path=$(pwd)
  cd
  # Using `find` command to filter out some useless dirs like i.e .local, .cache, ...
  p=$(find . -maxdepth 3 -type d -not \( -path "./.local/*" -o -path "./.cargo/*" -o -path "./.cache/*" \) | fzf)
	
	# Check if `p` is not empty.
	if [ -n "$p" ]; then
		cd "$p"
  else
    cd "$current_path"
	fi
}

project-fzf() {
  current_path=$(pwd)
  cd
  # Using `find` command to filter out some useless dirs like i.e .local, .cache, ...
  p=$(find . -maxdepth 3 -type d -not \( -path "./.local/*" -o -path "./.cargo/*" -o -path "./.cache/*" \) | fzf)
	
	# Check if `p` is not empty.
	if [ -n "$p" ]; then
    cd "$p"
		nvim
	fi
}

push() {
  git add .
  git commit -m "$@"
  git push
}

install() {
	sudo pacman -S "$@"
}
update() {
	sudo pacman -Syu
}
remove() {
	sudo pacman -Rs "$@"
}
