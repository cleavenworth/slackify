# Slackify
This is a simple LaunchDaemon that checks Spotify every 60 seconds for a currently playing track and sets it as your Slack status.

### Configure & Install
Note: This requires the Spotify Desktop app

You'll need to first get a Slack Legacy Token. You can get one at https://api.slack.com/custom-integrations/legacy-tokens

Clone this repo `git clone https://github.datto.net/cleavenworth/slackify/` `cd slackify`

The setup script must be run with sudo. Run as follows, replacing $slacktoken with the token you received from the site above.
`sudo ./setup.sh $slacktoken`
