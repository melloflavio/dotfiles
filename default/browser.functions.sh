# Launch installed browsers for a specific URL
# Usage: browsers "http://www.google.com"
function browsers(){
	chrome $1
	opera $1
	firefox $1
	safari $1
}

# Browserstack shortcuts, now with added hotness thanks to the Browserstack team.
# Note, a trial or paid for account is needed for this to work
# Usage: ipad3 "http://www.google.com", win7ie8 "http://www.google.com" etc.

# For local server running on port 3000, use like this
# Usage: ipad3 "http://localhost:3000" "localhost,3000,0", win7ie8 "http://localhost:3000" "localhost,3000,0" etc.

# For local server running on apache with ssl as staging.example.com and https://staging.example.com
# Usage: ipad3 "http://staging.example.com" "staging.example.com,80,0,staging.example.com,443,1", win7ie8 "http://staging.example.com" "staging.example.com,80,0,staging.example.com,443,1" etc.

function openurl(){
	if [ $2 ]
	then
	  url=$1"&host_ports=$2"
	fi
	open -a google\ chrome ${url}
}

function androidnexus(){
	local url="http://www.browserstack.com/start#os=android&os_version=4.0.3&device=Samsung+Galaxy+Nexus&zoom_to_fit=true&url=$1&start=true"
	openurl $url $2
}

function ipad3(){
	local url="http://www.browserstack.com/start#os=ios&os_version=5.1&device=iPad+3rd&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function ipad3ios6(){
	local url="http://www.browserstack.com/start#os=ios&os_version=6.1&device=iPad+3rd&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function ipad2(){
	local url="http://www.browserstack.com/start#os=ios&os_version=5.1&device=iPad+2nd&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7ie8(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=IE&browser_version=8.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7ie9(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=IE&browser_version=9.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win8ie10(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=8&browser=IE&browser_version=10.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function winxpie8(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=XP&browser=IE&browser_version=8.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function winxpie7(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=XP&browser=IE&browser_version=7.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function winxpie6(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=XP&browser=IE&browser_version=6.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7chrome(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=Chrome&browser_version=21.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7ff(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=Firefox&browser_version=16.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}
