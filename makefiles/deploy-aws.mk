.PHONY: deploy.aws


DEPLOY_REGION  ?= ap-northeast-1
ENV            ?= lab


define create_bucket
	$(eval GIT_USER_NAME := $(shell git remote -v | grep origin | grep '(push)'| awk '{print $2}' | cut -d "/" -f 4))
	$(eval GIT_REPOSITORY_NAME := $(shell git remote -v | grep origin | grep '(push)'| awk '{print $2}' | cut -d "/" -f 5 | sed "s/.git//g" | sed "s/(push)//g" | sed "s/ //g" | sed "s/-//g"))
	aws s3 mb s3://$(GIT_REPOSITORY_NAME)-$(ENV)-$(GIT_USER_NAME)\
	--region $(DEPLOY_REGION)
endef

deploy.aws:
	$(call create_bucket)
