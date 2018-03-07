DCMP = docker
APP = sortingmethods_sortingmethods
DCMP_EXEC_APP = ${DCMP} exec ${APP}
DCMP_RUN_APP = ${DCMP} run ${APP}


run:
	bundle install
	bash 'echo "gemspec" >> Gemfile'

bash:
	docker run -it sortingmethods_sortingmethods bash

run_app:
	 docker run -t sortingmethods_sortingmethods ruby 'bin/console'