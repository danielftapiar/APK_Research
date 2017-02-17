.class public Luk/co/santander/santanderUK/famtec/android/geolocation/GeoLocation;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Luk/co/santander/santanderUK/famtec/android/geolocation/GeoLocation;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/app/Activity;
    .locals 1

    sget-object v0, Luk/co/santander/santanderUK/famtec/android/geolocation/GeoLocation;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static getGoogleMapsLocation(Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;
    .locals 3

    const/4 v2, 0x0

    sput-object p1, Luk/co/santander/santanderUK/famtec/android/geolocation/GeoLocation;->a:Landroid/app/Activity;

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/geolocation/b;

    invoke-direct {v0, v2}, Luk/co/santander/santanderUK/famtec/android/geolocation/b;-><init>(B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Luk/co/santander/santanderUK/famtec/android/geolocation/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    invoke-virtual {v0}, Luk/co/santander/santanderUK/famtec/android/geolocation/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLocationInfo(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Landroid/app/Activity;)Ljava/util/List;
    .locals 3

    const/4 v2, 0x0

    sput-object p1, Luk/co/santander/santanderUK/famtec/android/geolocation/GeoLocation;->a:Landroid/app/Activity;

    new-instance v0, Luk/co/santander/santanderUK/famtec/android/geolocation/a;

    invoke-direct {v0, v2}, Luk/co/santander/santanderUK/famtec/android/geolocation/a;-><init>(B)V

    const/4 v1, 0x1

    new-array v1, v1, [Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Luk/co/santander/santanderUK/famtec/android/geolocation/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    invoke-virtual {v0}, Luk/co/santander/santanderUK/famtec/android/geolocation/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method
