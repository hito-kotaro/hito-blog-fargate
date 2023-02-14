STACK_NAME=<STACK_NAME>
PROFILE=<YOUR_PROFILE_NAME>

deploy:
	aws cloudformation deploy \
		--template-file ./src/template.yml \
		--stack-name $(STACK_NAME) \
		--profile $(PROFILE) \
		--parameter-overrides "file://params/params.json" 

