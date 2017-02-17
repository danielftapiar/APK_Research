.class final Lcl/santander/santanderCL/famtec/android/gps/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;


# direct methods
.method private constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcl/santander/santanderCL/famtec/android/gps/h;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->e(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>(DD)V

    const/4 v0, 0x1

    iput v0, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v3, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v3}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v4}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v2}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0, p1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Landroid/location/Location;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    :cond_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iput-boolean v5, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_bLocalizado:Z

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0, p1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Landroid/location/Location;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    :cond_4
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iput-boolean v5, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_bLocalizado:Z

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_Latitud:D

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_Longitud:D

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->i(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/h;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
