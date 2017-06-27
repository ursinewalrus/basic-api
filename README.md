Import the basic-api.sql file into the mysql db of your choice and set that db as the apps db by setting its credentials in the .env file. 
besides that all it should need to run is redis. I know you dont normally include your vendor folder but I did here just for ease of use
so there should be no need to run composer. From the root dir run "$ redis-server" to enable caching. If you do not have redis you will need to install
it. "$ vendor/bin/phpunit" to run tests. The tests test all the routes for the campaign controller. Models are pretty basic, they just
establish some assoc's between each other so you can do stuff like $campaign->ad_groups on a campaign model object. THey also house the 
basic crud methods, called from the controller which gets the various requests. You don't actually need the .sql file if you don't mind
starting with an empty db, as the migrations in database/migrations will set it up, along with some basic restrictions and associations. 
"$ php artisan migrate" to run them. They do a lot of the work models could do but I think a little cleaner and easier. Everything goes
off request body for consistancy in code and testing.
e.g.
$response = $this->call('GET','api/campaigns', array('id'=>$new_id));
So if using something like ARC send all data in json format as part of the raw payload. Obviously for GET or POST you could pull form 
query string or data_form for $_GET and $_POST respectivly, but again, it's just a little more consistant this way. 
