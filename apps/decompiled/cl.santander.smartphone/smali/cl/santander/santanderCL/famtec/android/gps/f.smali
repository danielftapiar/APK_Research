.class final Lcl/santander/santanderCL/famtec/android/gps/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

.field private final synthetic b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->i(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-wide v1, v1, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_Latitud:D

    iput-wide v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-wide v1, v1, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_Longitud:D

    iput-wide v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    const/4 v1, 0x1

    iput v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->i(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/f;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    const/4 v1, 0x0

    iput v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
