# Generated by Django 5.0.3 on 2024-06-07 12:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('booking', '0035_flight_offers_update'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='flight_offers_update',
            new_name='flight_offersupdate',
        ),
        migrations.AlterModelTable(
            name='home_carousel',
            table='Home_carousel',
        ),
    ]
