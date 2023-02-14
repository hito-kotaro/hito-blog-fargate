STACK_NAME=<STACK_NAME>
PROFILE=<YOUR_PROFILE_NAME>

validate:
	aws cloudformation validate-template --template-body file://src/template.yml
deploy:
	aws cloudformation deploy \
		--template-file ./src/template.yml \
		--stack-name $(STACK_NAME) \
		--profile $(PROFILE) \
		--capabilities CAPABILITY_NAMED_IAM \
		--parameter-overrides "file://params/params.json" 

