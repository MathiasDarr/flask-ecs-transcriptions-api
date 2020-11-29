import sys

from flask.cli import FlaskGroup

from app import create_app, db
from app.api.users.models import User


app = create_app()
cli = FlaskGroup(create_app=create_app)


@cli.command('recreate_db')
def recreate_db():
    db.drop_all()
    db.create_all()
    db.session.commit()


@cli.command('seed_db')
def seed_db():
    """Seeds the database."""
    db.session.add(User(username='mddarr', email="mddarr@gmail.com"))
    db.session.add(User(username='dakobedard', email="dakobedard@mherman.org"))
    db.session.commit()


if __name__ == '__main__':
    cli()
