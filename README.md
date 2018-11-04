Ignore deploy script in scripts directory.

To deploy changes from the src branch:

rm -rf public/ 
hugo -t beautifulhugo
manually copy pasta the newly built public folder into a temporary location
checkout staging
overwrite staging with public/
push staging to repo
PR from staging -> master
verify changes are as expected 
merge PR
validate changes at kellyripple.com