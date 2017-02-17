.class public Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_GPS_OFF:I = -0x1

.field public static final STATUS_GPS_PAUSE:I = 0x0

.field public static final STATUS_GPS_RUNNING:I = 0x1


# instance fields
.field a:Ljava/util/concurrent/Semaphore;

.field b:Ljava/util/concurrent/Semaphore;

.field c:Ljava/util/concurrent/Semaphore;

.field private d:I

.field private e:D

.field private f:Landroid/app/AlertDialog;

.field private g:Landroid/location/LocationManager;

.field private h:Landroid/location/LocationListener;

.field private i:Landroid/location/Location;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Landroid/app/Activity;

.field public m_Latitud:D

.field public m_Longitud:D

.field public m_bLocalizado:Z

.field private n:Landroid/os/Handler;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcl/santander/santanderCL/famtec/android/gps/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcl/santander/santanderCL/famtec/android/gps/h;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;B)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h:Landroid/location/LocationListener;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcl/santander/santanderCL/famtec/android/gps/a;

    invoke-direct {v0, p0}, Lcl/santander/santanderCL/famtec/android/gps/a;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->n:Landroid/os/Handler;

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m:Landroid/app/Activity;

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f:Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)I
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v1}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcl/santander/santanderCL/famtec/android/gps/e;

    invoke-direct {v3, p0, v1}, Lcl/santander/santanderCL/famtec/android/gps/e;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    if-nez v2, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcl/santander/santanderCL/famtec/android/gps/f;

    invoke-direct {v2, p0, v1}, Lcl/santander/santanderCL/famtec/android/gps/f;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    iput v0, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    iget-wide v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iput-wide v2, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iget-wide v0, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    iput-wide v0, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    iget v0, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GPS desabilitado, \u00bfHabilitar?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Si"

    new-instance v3, Lcl/santander/santanderCL/famtec/android/gps/b;

    invoke-direct {v3, p0}, Lcl/santander/santanderCL/famtec/android/gps/b;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "No"

    new-instance v2, Lcl/santander/santanderCL/famtec/android/gps/c;

    invoke-direct {v2, p0}, Lcl/santander/santanderCL/famtec/android/gps/c;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;I)V
    .locals 0

    iput p1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->i:Landroid/location/Location;

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Z)V
    .locals 0

    iput-boolean p1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->o:Z

    return-void
.end method

.method static synthetic b(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcl/santander/santanderCL/famtec/android/gps/g;

    invoke-direct {v0, p0}, Lcl/santander/santanderCL/famtec/android/gps/g;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic c(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic d(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->i:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic e(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Z
    .locals 1

    iget-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->l:Z

    return v0
.end method

.method static synthetic f(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)D
    .locals 2

    iget-wide v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->e:D

    return-wide v0
.end method

.method static synthetic i(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic k(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Z
    .locals 1

    iget-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->o:Z

    return v0
.end method

.method static synthetic l(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    invoke-direct {p0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a()V

    return-void
.end method

.method static synthetic m(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    invoke-direct {p0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b()V

    return-void
.end method

.method static synthetic n(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)I
    .locals 1

    iget v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    return v0
.end method


# virtual methods
.method public GetLocation(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)I
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-direct {p0, p1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)I

    move-result v0

    return v0
.end method

.method public Init_GPS()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->l:Z

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->o:Z

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m_bLocalizado:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->e:D

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->m:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->o:Z

    const/4 v0, 0x1

    iput v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    iget-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->j:Ljava/lang/Object;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->set_callback(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrecision(D)V
    .locals 0

    iput-wide p1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->e:D

    return-void
.end method

.method public set_callback(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v5, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->l:Z

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->j:Ljava/lang/Object;

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->k:Ljava/lang/String;

    iget v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcl/santander/santanderCL/famtec/android/gps/d;

    invoke-direct {v1, p0}, Lcl/santander/santanderCL/famtec/android/gps/d;-><init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->o:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b()V

    iget v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->d:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->h:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop_GPS()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->l:Z

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
