#!/usr/bin/env sh
# -*- coding: utf-8 -*-
#
# This file is part of Invenio.
# Copyright (C) 2016-2019 CERN.
#
# Invenio is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

pydocstyle invenio_xrootd tests && \
isort -rc -c -df **/*.py && \
sphinx-build -qnNW docs docs/_build/html && \
python -m pytest && \
sphinx-build -qnNW -b doctest docs docs/_build/doctest
