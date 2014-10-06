run:
	docker run -d -p 3690:3690 -v /var/data/svn:/data --name svn1 bartojs/svn 

build:
	docker build -t bartojs/svn .

create:
	docker run --rm -it -p 3690:3690 -v /var/data/svn:/data bartojs/svn  svnadmin create /data/myrepo

load:
	echo Dumpfile is in /var/data/svn/svn.dump
	docker run --rm -it -p 3690:3690 -v /var/data/svn:/data bartojs/svn  svnadmin load /data/myrepo < /data/svn.dump

client:
	echo sample client
	docker run --rm -it bartojs/svn svn --version
