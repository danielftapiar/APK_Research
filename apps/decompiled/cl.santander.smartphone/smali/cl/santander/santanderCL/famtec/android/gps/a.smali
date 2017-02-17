.class final Lcl/santander/santanderCL/famtec/android/gps/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;I)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_Latitud:D

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/a;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_Longitud:D

    :cond_1
    return-void
.end method
