function cars.setup
	pushd ~/code/cars/cars_platform/
env PSQL_SOURCE=/user/local/bin/docker script/setup
popd
end
