import functools

from flask import (
    Blueprint, flash, g, redirect, render_template, request, session, url_for
)

from fairways_and_greens.db import get_db


bp = Blueprint('map_view', __name__, url_prefix='/map_view')


bp.route('/')
def map_view():
    return render_template(('map_view/main.html'))
