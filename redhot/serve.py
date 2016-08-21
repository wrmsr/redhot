#!/usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import absolute_import

import json

from flask import Flask


app = Flask(__name__)


# https://api.github.com/users/google/repos
# curl \
#     -G 'https://api.github.com/search/repositories' \
#     --data-urlencode 'sort=stars' \
#     --data-urlencode 'order=desc' \
#     --data-urlencode 'q=language:java' \
#     --data-urlencode 'q=created:>`date -v-7d '+%Y-%m-%d'`'


@app.route('/', methods=['GET'])
def hello():
    return json.dumps({'response': 'Hello World!'})


if __name__ == '__main__':
    app.run()
