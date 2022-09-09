FROM python:3.7-alpine


LABEL name="pycodestyle-action"
LABEL version="1.0.0"
LABEL repository="http://github.com/pelucid/pycodestyle_github_action"
LABEL homepage="http://github.com/pelucid/pycodestyle_github_action"

LABEL maintainer="Me"
LABEL com.github.actions.name="pycodestyle_github_action"
LABEL com.github.actions.description="Run Pycodestyle on pull request"
LABEL com.github.actions.icon="git-pull-request"
LABEL com.github.actions.color="purple"

RUN apk add jq curl

RUN pip install pycodestyle
CMD ["pycodestyle --max-line-length=100", "/github/workspace/"]
