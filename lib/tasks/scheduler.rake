desc	"This task is called by the Heroku cron add-on"
task: stay_awake => environment do 
	uri=URI.parse('http://mikemochan.com')
	Net::HTTP.get(uri)
end