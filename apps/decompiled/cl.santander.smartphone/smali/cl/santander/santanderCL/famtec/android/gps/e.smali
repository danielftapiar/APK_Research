.class final Lcl/santander/santanderCL/famtec/android/gps/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

.field private final synthetic b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->n(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v5}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :goto_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v5}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    const/4 v1, 0x0

    iput v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_2
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/e;->b:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    const/4 v1, -0x1

    iput v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    goto :goto_0
.end method
