from django.apps import AppConfig
# import redis

class MainAppConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'main_app'

    def ready(self):
        import main_app.signals

# red = redis.Redis(
#     host='redis-19126.c1.eu-west-1-3.ec2.cloud.redislabs.com',
#     port=19126,
#     password='tG960lWD0Px5XgbPVbszpmka9peqfaIn'
# )