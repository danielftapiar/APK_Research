.class public Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;
.super Landroid/app/Application;
.source "TransantiagoMasterApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$TwitterBackgroundLogin;
    }
.end annotation

.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    customReportContent = {
        .enum Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;
    }
    formKey = ""
    mailTo = "soporte@birdie.cl"
    mode = .enum Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;
    resDialogCommentPrompt = 0x7f060105
    resDialogIcon = 0x108009b
    resDialogOkToast = 0x7f060106
    resDialogText = 0x7f060104
    resDialogTitle = 0x7f060103
    resNotifIcon = 0x1080078
    resNotifText = 0x7f060102
    resNotifTickerText = 0x7f060100
    resNotifTitle = 0x7f060101
    resToastText = 0x7f0600ff
.end annotation


# static fields
.field public static TMCacheDir:Ljava/lang/String;

.field static app:Landroid/app/Application;

.field private static app_version:Ljava/lang/String;

.field public static datos:Lcl/birdie/transantiagomaster/PantallaDatos;

.field public static db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

.field public static extendedInit:Z

.field public static fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

.field public static prefs:Lcl/birdie/params/Preferencias;

.field public static speech:Lcl/birdie/transantiagomaster/speech/Speech;

.field public static userAgent:Ljava/lang/String;


# instance fields
.field kl:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->extendedInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static activarEventReceiver(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 387
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 388
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 389
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcl/birdie/transantiagomaster/RemoteControlReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v1, "mediaButtonReceiver":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 391
    const/4 v2, 0x1

    .line 393
    .end local v1    # "mediaButtonReceiver":Landroid/content/ComponentName;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static actualizarChangelog()V
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app_version:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app_version:Ljava/lang/String;

    iput-object v1, v0, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    .line 479
    :goto_0
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 480
    return-void

    .line 478
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const-string v1, "N/A"

    iput-object v1, v0, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    goto :goto_0
.end method

.method public static desactivarEventReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 378
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 379
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 380
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcl/birdie/transantiagomaster/RemoteControlReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v1, "mediaButtonReceiver":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 383
    .end local v1    # "mediaButtonReceiver":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method public static estaInicializadoExtendido()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->extendedInit:Z

    return v0
.end method

.method public static inicializar(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    const-string v2, "TransantiagoMasterApplication"

    const-string v3, "inicializar"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 100
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 102
    invoke-static {}, Lcl/birdie/transantiagomaster/TileHandler;->inicializar$faab20d()V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020081

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcl/birdie/transantiagomaster/Imagenes;->bmpIconoParadero:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02011d

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcl/birdie/transantiagomaster/Imagenes;->bmpLeg:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020078

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcl/birdie/transantiagomaster/Imagenes;->bmpAnonymous:Landroid/graphics/Bitmap;

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget-object v2, Lcl/birdie/transantiagomaster/Imagenes;->bmpIconoParadero:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoParaderoHeight:I

    sget-object v2, Lcl/birdie/transantiagomaster/Imagenes;->bmpIconoParadero:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoParaderoWidth:I

    sput v6, Lcl/birdie/transantiagomaster/Imagenes;->iconoParaderoAnchorX:I

    sget v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoParaderoHeight:I

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoParaderoAnchorY:I

    sget-object v2, Lcl/birdie/transantiagomaster/Imagenes;->bmpLeg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegHeight:I

    sget-object v2, Lcl/birdie/transantiagomaster/Imagenes;->bmpLeg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegWidth:I

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegAnchorX:I

    sget v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegHeight:I

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegAnchorY:I

    sget v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegWidth:I

    div-int/lit8 v2, v2, 0x4

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegTextX:I

    sget v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegHeight:I

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegTextY:I

    invoke-static {p0}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->inicializarStrings(Landroid/content/Context;)V

    .line 105
    new-instance v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;-><init>()V

    sput-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    .line 107
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app:Landroid/app/Application;

    invoke-static {v2}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->inicializar(Landroid/content/Context;)V

    .line 109
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 110
    .local v1, "hoy":Ljava/util/Date;
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 112
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 113
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 114
    :cond_0
    new-instance v2, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;-><init>()V

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;->descargarParametrosBip()V

    .line 116
    :cond_1
    new-instance v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$TwitterBackgroundLogin;

    invoke-direct {v2, v5}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$TwitterBackgroundLogin;-><init>(B)V

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$TwitterBackgroundLogin;->start()V

    .line 118
    invoke-static {}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->inicializar$faab20d()V

    .line 120
    new-instance v2, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorListaReclamos;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorListaReclamos;-><init>()V

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "http://api.transantiagomaster.cl/tiporeclamos.php"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorListaReclamos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    sput-boolean v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->extendedInit:Z

    .line 126
    return-void
.end method

.method public static inicializarGPS(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 133
    const-string v0, "TransantiagoMasterApplication"

    const-string v1, "inicializarGPS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p0}, Lcl/birdie/transantiagomaster/GPSController;->inicializar(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcl/birdie/transantiagomaster/GPSController;->startLocationUpdate(Landroid/content/Context;)V

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Lcl/birdie/transantiagomaster/GPSController;->pedirPosicion(I)V

    .line 137
    return-void
.end method

.method public static mostrarChangelog()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 457
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app_version:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 460
    :cond_1
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 462
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    const-string v3, "N/A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 466
    goto :goto_0

    :cond_2
    move v0, v1

    .line 471
    goto :goto_0
.end method

.method private static obtenerAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 446
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 451
    .local v0, "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 452
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 453
    :cond_0
    return-object v1

    .line 448
    .end local v0    # "pinfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 449
    const/4 v0, 0x0

    .restart local v0    # "pinfo":Landroid/content/pm/PackageInfo;
    goto :goto_0
.end method

.method public static persistirPreferencias()V
    .locals 4

    .prologue
    .line 431
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app:Landroid/app/Application;

    const-string v2, "cl.birdie.transantiagomaster"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/birdie/params/Preferencias;->persistir(Landroid/content/SharedPreferences;)V

    .line 432
    return-void
.end method

.method public static vibrar(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 435
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v1, v1, Lcl/birdie/params/Preferencias;->Vibracion:Z

    if-eqz v1, :cond_0

    .line 436
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 437
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 438
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 440
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 141
    const-string v3, "TransantiagoMasterApplication"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 144
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 146
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->obtenerAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app_version:Ljava/lang/String;

    .line 148
    sput-object p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app:Landroid/app/Application;

    .line 150
    new-instance v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-direct {v3}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;-><init>()V

    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    .line 152
    new-instance v3, Lcl/birdie/transantiagomaster/PantallaDatos;

    invoke-direct {v3}, Lcl/birdie/transantiagomaster/PantallaDatos;-><init>()V

    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    .line 154
    new-instance v3, Lcl/birdie/params/Preferencias;

    invoke-direct {v3}, Lcl/birdie/params/Preferencias;-><init>()V

    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 158
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TransantiagoMaster "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const-string v4, "cl.birdie.transantiagomaster"

    invoke-virtual {p0, v4, v6}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcl/birdie/params/Preferencias;->leer(Landroid/content/SharedPreferences;)V

    .line 169
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v3, p0}, Lcl/birdie/params/Preferencias;->leerNuevo(Landroid/content/Context;)V

    .line 173
    :try_start_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->TMCacheDir:Ljava/lang/String;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TMCacheDir: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->TMCacheDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_1
    invoke-static {}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->inicializar$faab20d()V

    .line 181
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v3, v3, Lcl/birdie/params/Preferencias;->CapturarMediaButton:Z

    if-eqz v3, :cond_0

    .line 182
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 183
    invoke-static {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->activarEventReceiver(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 186
    .local v1, "km":Landroid/app/KeyguardManager;
    const-string v3, "TransantiagoMaster"

    invoke-virtual {v1, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    iput-object v3, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    .line 187
    iget-object v3, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 191
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    .line 192
    new-instance v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;-><init>(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    :cond_1
    new-instance v3, Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-direct {v3}, Lcl/birdie/transantiagomaster/speech/Speech;-><init>()V

    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    .line 197
    const/4 v3, 0x1

    sput-boolean v3, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 198
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TransantiagoMaster Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->userAgent:Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 176
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    const-string v3, "TransantiagoMasterApplication"

    const-string v4, "error obteniendo TMCacheDir"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
