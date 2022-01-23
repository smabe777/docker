import skillmgr

import os

from waitress import serve

from skillmgr import create_app
app = create_app()

if __name__ == "__main__":
    print(app)
    serve(app, listen='*:80')

