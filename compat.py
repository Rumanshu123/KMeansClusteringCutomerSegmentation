# compat.py

try:
    from werkzeug.urls import url_quote as quote
except ImportError:
    from werkzeug.utils import quote
