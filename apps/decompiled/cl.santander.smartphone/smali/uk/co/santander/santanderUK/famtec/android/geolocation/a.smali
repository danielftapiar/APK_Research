.class final Luk/co/santander/santanderUK/famtec/android/geolocation/a;
.super Landroid/os/AsyncTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Luk/co/santander/santanderUK/famtec/android/geolocation/a;-><init>()V

    return-void
.end method

.method private static varargs a([Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)Ljava/util/List;
    .locals 7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Luk/co/santander/santanderUK/famtec/android/geolocation/GeoLocation;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p0, v1

    iget-wide v1, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    const/4 v3, 0x0

    aget-object v3, p0, v3

    iget-wide v3, v3, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "FIN doInBackground!!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-static {p1}, Luk/co/santander/santanderUK/famtec/android/geolocation/a;->a([Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
