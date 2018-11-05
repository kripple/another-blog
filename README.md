Ignore deploy script in scripts directory.

To deploy changes from the src branch:

1. rm -rf public/ 
1. hugo -t beautifulhugo
1. manually copy pasta the newly built public folder into a temporary location
1. checkout staging
1. overwrite staging with public/
1. push staging to repo
1. PR from staging -> master
1. verify changes are as expected 
1. merge PR
1. validate changes at kellyripple.com