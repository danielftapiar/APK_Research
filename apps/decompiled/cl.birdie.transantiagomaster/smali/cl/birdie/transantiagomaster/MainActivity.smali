.class public Lcl/birdie/transantiagomaster/MainActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IUploadPhoto;
.implements Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;,
        Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;,
        Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;,
        Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;,
        Lcl/birdie/transantiagomaster/MainActivity$RedSocial;,
        Lcl/birdie/transantiagomaster/MainActivity$SessionStatusCallback;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito:[I

.field public static Path:Ljava/lang/String;

.field public static actualizarBd:Z

.field public static actualizarMapa:Z

.field private static lastWallRequest:J


# instance fields
.field public final TAG_PROGRESS_ITINERARIO:Ljava/lang/String;

.field private activityPaused:Z

.field private barraDerechaFragment:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

.field public fragDisplayPhoto:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

.field public fragFavoritos:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

.field private fragItinerarios:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

.field private fragMapa:Lcl/birdie/transantiagomaster/GApp;

.field private fragPlanificar:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

.field private fragRecorridos:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

.field public fragSaldoBip:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

.field public fragSocial:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

.field public fragWall:Lcl/birdie/transantiagomaster/facebook/WallFragment;

.field fromVoiceMatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile fromVoiceRecognition:Z

.field private interstitial:Ljava/lang/Object;

.field mMode:Lcom/actionbarsherlock/view/ActionMode;

.field mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

.field private menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field private volatile numTasks:I

.field private progressDialogServicios:Landroid/app/ProgressDialog;

.field volatile reconocerVoz:Z

.field private selectedFragmentTag:Ljava/lang/String;

.field private statusCallback:Lcom/facebook/Session$StatusCallback;

.field private tiempos:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

.field private tiemposReferenciales:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito()[I
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lcl/birdie/transantiagomaster/MainActivity;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->values()[Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/birdie/transantiagomaster/MainActivity;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1264
    const-wide/16 v2, 0x2710

    .line 1263
    sub-long/2addr v0, v2

    sput-wide v0, Lcl/birdie/transantiagomaster/MainActivity;->lastWallRequest:J

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1384
    const-string v1, "/TranSantiagoMaster.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    .line 2559
    sput-boolean v4, Lcl/birdie/transantiagomaster/MainActivity;->actualizarBd:Z

    .line 2560
    sput-boolean v4, Lcl/birdie/transantiagomaster/MainActivity;->actualizarMapa:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 166
    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->reconocerVoz:Z

    .line 334
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$SessionStatusCallback;

    invoke-direct {v0, p0, v1}, Lcl/birdie/transantiagomaster/MainActivity$SessionStatusCallback;-><init>(Lcl/birdie/transantiagomaster/MainActivity;B)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 642
    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceMatches:Ljava/util/ArrayList;

    .line 643
    iput-boolean v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceRecognition:Z

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->activityPaused:Z

    .line 1494
    const-string v0, "itinerario"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->TAG_PROGRESS_ITINERARIO:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private ShowFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "backRequired"    # Z

    .prologue
    .line 892
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 895
    .local v0, "tx":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x1020002

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 896
    if-eqz p3, :cond_0

    .line 897
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 898
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 899
    return-void
.end method

.method static synthetic access$0$6407a2a7(Lcl/birdie/transantiagomaster/MainActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcl/birdie/transantiagomaster/MainActivity;->onSessionStateChange$2514babc(Lcom/facebook/Session;Lcom/facebook/SessionState;)V

    return-void
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10$57d69125(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 14

    .prologue
    .line 2121
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcl/birdie/transantiagomaster/MainActivity;->doComplainObject(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    return-void
.end method

.method static synthetic access$11(Lcl/birdie/transantiagomaster/MainActivity;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 3

    .prologue
    .line 1207
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    const v1, 0x7f06013a

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$14;

    invoke-direct {v1, p0, p3}, Lcl/birdie/transantiagomaster/MainActivity$14;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {p1, v0, v1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PublicarFoto(Ljava/lang/String;[BLcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$12(Lcl/birdie/transantiagomaster/MainActivity;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 2

    .prologue
    .line 1240
    const v0, 0x7f06013a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$15;

    invoke-direct {v0, p0, p2}, Lcl/birdie/transantiagomaster/MainActivity$15;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->CreateFeedToTM(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    return-void
.end method

.method static synthetic access$13(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/BarraDerechaFragment;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->barraDerechaFragment:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    return-object v0
.end method

.method static synthetic access$14(Lcl/birdie/transantiagomaster/MainActivity;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    return v0
.end method

.method static synthetic access$2$6a6bd456(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 1

    .prologue
    .line 1460
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1520
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->procesarDescargaItinerarioPost()V

    return-void
.end method

.method static synthetic access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    return-object v0
.end method

.method static synthetic access$5(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->refrescarIntersticial()V

    return-void
.end method

.method static synthetic access$6(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 3

    .prologue
    .line 3551
    const-string v0, "MainActivity"

    const-string v1, "updateShareDate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v0, Lcl/birdie/params/Preferencias;->share_last_date:Ljava/util/Date;

    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$43;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$43;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$8(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 1

    .prologue
    .line 2608
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$26;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$26;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-static {v0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->revisarMapa(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    return-void
.end method

.method static synthetic access$9(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 4

    .prologue
    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "decisionDescarga con actualizarBd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcl/birdie/transantiagomaster/MainActivity;->actualizarBd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actualizarMapa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcl/birdie/transantiagomaster/MainActivity;->actualizarMapa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcl/birdie/transantiagomaster/MainActivity;->actualizarBd:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcl/birdie/transantiagomaster/MainActivity;->actualizarMapa:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcl/birdie/transantiagomaster/MainActivity;->actualizarBd:Z

    sget-boolean v1, Lcl/birdie/transantiagomaster/MainActivity;->actualizarMapa:Z

    const-string v2, "descargabasedatos"

    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$27;

    invoke-direct {v3, p0, v0, v1}, Lcl/birdie/transantiagomaster/MainActivity$27;-><init>(Lcl/birdie/transantiagomaster/MainActivity;ZZ)V

    invoke-static {p0, v2, v3}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->showDialog$25b1ab70(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MainActivity"

    const-string v1, "nada que actualizar."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private activarModoParaderoRecorrido()V
    .locals 2

    .prologue
    .line 1768
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v0, :cond_0

    .line 1770
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;-><init>(Lcl/birdie/transantiagomaster/MainActivity;B)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 1773
    :goto_0
    return-void

    .line 1772
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    goto :goto_0
.end method

.method private checkFragment()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 398
    const-string v0, "MainActivity"

    const-string v1, "checkFragment: selectedFragmentTag NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkFragment: selectedFragmentTag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private desactivarModo()V
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 1779
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 1781
    :cond_0
    return-void
.end method

.method private doComplainObject(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 21
    .param p1, "redSocial"    # Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .param p4, "problemId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "lat"    # D
    .param p8, "lng"    # D
    .param p10, "imagenes"    # [Ljava/lang/String;
    .param p11, "idImagenes"    # [Ljava/lang/String;
    .param p12, "fileImagenes"    # [Ljava/lang/String;
    .param p13, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 2124
    const/4 v15, 0x0

    .line 2125
    .local v15, "userId":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2126
    .local v16, "userToken":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2127
    .local v18, "userSecret":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2129
    .local v17, "network":Ljava/lang/String;
    sget-object v3, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_TWITTER:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 2130
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v15, v3, Lcl/birdie/params/Preferencias;->twitter_userid:Ljava/lang/String;

    .line 2131
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v3, Lcl/birdie/params/Preferencias;->twitter_token:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2132
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v3, Lcl/birdie/params/Preferencias;->twitter_secret:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2133
    const-string v17, "T"

    .line 2142
    :cond_0
    :goto_0
    new-instance v19, Lcl/birdie/transantiagomaster/MainActivity$19;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/MainActivity$19;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2141
    const-string v20, "http://api.transantiagomaster.cl/newcomplain.php"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enviarReclamo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v3 .. v19}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2169
    return-void

    .line 2134
    :cond_1
    sget-object v3, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 2135
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getUserId()Ljava/lang/String;

    move-result-object v15

    .line 2136
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getUserToken()Ljava/lang/String;

    move-result-object v16

    .line 2137
    const/16 v18, 0x0

    .line 2138
    const-string v17, "F"

    goto :goto_0
.end method

.method private static getBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1197
    .local v1, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 1200
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 1201
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1204
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 1202
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static llenarTiemposParadero(Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;)V
    .locals 2
    .param p0, "h"    # Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    .prologue
    .line 2417
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    .line 2418
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-object p0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    .line 2417
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onRefrescaProgressBar()V
    .locals 2

    .prologue
    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRefrescaProgressBar: numTasks "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3651
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$46;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$46;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3657
    return-void
.end method

.method private onSessionStateChange$2514babc(Lcom/facebook/Session;Lcom/facebook/SessionState;)V
    .locals 2
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;

    .prologue
    .line 373
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string v0, "MainActivity"

    const-string v1, "Logged in..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->saveToken(Lcom/facebook/Session;)V

    .line 377
    invoke-static {p0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getMe(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, "MainActivity"

    const-string v1, "Logged out..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->clearToken()V

    .line 381
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->clearMe()V

    goto :goto_0
.end method

.method private procesarDescargaItinerarioPost()V
    .locals 6

    .prologue
    .line 1521
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v4}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 1524
    const/4 v0, 0x0

    .line 1526
    .local v0, "found":Z
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v4, :cond_0

    .line 1527
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1528
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    move-result-object v3

    .line 1529
    .local v3, "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    if-eqz v3, :cond_0

    .line 1530
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1531
    invoke-virtual {v4, v3}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setParaderoSeleccionado(Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;)V

    .line 1532
    const/4 v0, 0x1

    .line 1536
    .end local v3    # "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    :cond_0
    if-nez v0, :cond_1

    .line 1539
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v4}, Lcl/birdie/toolkit/LatLng;->isNull()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1540
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getLatLng()Lcl/birdie/toolkit/LatLng;

    move-result-object v2

    .line 1544
    .local v2, "ref":Lcl/birdie/toolkit/LatLng;
    :goto_0
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1545
    invoke-virtual {v4, v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarPosicion(Lcl/birdie/toolkit/LatLng;)Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    move-result-object v3

    .line 1546
    .restart local v3    # "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    if-eqz v3, :cond_4

    .line 1547
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1548
    invoke-virtual {v4, v3}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setParaderoSeleccionado(Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;)V

    .line 1556
    .end local v2    # "ref":Lcl/birdie/toolkit/LatLng;
    .end local v3    # "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    :cond_1
    :goto_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1557
    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v1

    .line 1558
    .local v1, "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    if-eqz v1, :cond_2

    .line 1559
    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-static {v4}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 1561
    :cond_2
    iget-object v4, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v4, :cond_5

    .line 1562
    const-string v4, "MainActivity"

    const-string v5, "DescargadorItinerario: fragMapa null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/MainActivity;->onSetModoNavegacion(I)V

    .line 1566
    return-void

    .line 1542
    .end local v1    # "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_3
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    .restart local v2    # "ref":Lcl/birdie/toolkit/LatLng;
    goto :goto_0

    .line 1550
    .restart local v3    # "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    :cond_4
    const-string v4, "MainActivity"

    const-string v5, "no encontramos posicion???"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1552
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setIndice(I)V

    goto :goto_1

    .line 1564
    .end local v2    # "ref":Lcl/birdie/toolkit/LatLng;
    .end local v3    # "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    .restart local v1    # "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_5
    iget-object v4, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/GApp;->setItinerarioLayer()V

    goto :goto_2
.end method

.method private refrescarIntersticial()V
    .locals 3

    .prologue
    .line 322
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 329
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->interstitial:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method


# virtual methods
.method public final UploadPhotoFromCamera()V
    .locals 4

    .prologue
    .line 1395
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1397
    .local v1, "output":Landroid/net/Uri;
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1398
    const/16 v2, 0x7c

    invoke-virtual {p0, v0, v2}, Lcl/birdie/transantiagomaster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1399
    return-void
.end method

.method public final UploadPhotoFromGallery()V
    .locals 3

    .prologue
    .line 1388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 1389
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1388
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1390
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1391
    return-void
.end method

.method public final capasPorZoom()V
    .locals 2

    .prologue
    .line 3168
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_0

    .line 3170
    const-string v0, "MainActivity"

    const-string v1, "capasPorZoom: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    :goto_0
    return-void

    .line 3172
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->capasPorZoom()V

    goto :goto_0
.end method

.method public final checkVoiceRecognition()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2784
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2787
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    .line 2788
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    .line 2787
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2789
    .local v0, "intent":Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 2790
    const-string v3, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2791
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2790
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2794
    :cond_0
    const-string v3, "android.speech.extra.PROMPT"

    const-string v4, "Diga su comando"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2795
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    .line 2796
    const-string v4, "web_search"

    .line 2795
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2797
    const-string v3, "android.speech.extra.MAX_RESULTS"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2799
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 2800
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2803
    const-string v3, "MainActivity"

    const-string v4, "checkVoiceRecognition: size 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :goto_0
    return v2

    .line 2806
    :cond_1
    const-string v2, "MainActivity"

    const-string v3, "checkVoiceRecognition: OK"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final crearMapView$7a1a0ab8(Landroid/view/LayoutInflater;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 3513
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/IMapViewController;->crearMapView$7a1a0ab8(Landroid/view/LayoutInflater;)V

    .line 3514
    return-void
.end method

.method public final destroyMapView()V
    .locals 1

    .prologue
    .line 3504
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/IMapViewController;->destroyMapView()V

    .line 3505
    return-void
.end method

.method public final doFavoriteLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 2192
    const-string v0, "line"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.transantiagomaster.cl/social/line.php?line="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcl/birdie/transantiagomaster/MainActivity$21;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/MainActivity$21;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2192
    invoke-static {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->Favorite(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2209
    return-void
.end method

.method public final doFavoriteStop(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 2172
    const-string v0, "stop"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.transantiagomaster.cl/social/stop.php?code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcl/birdie/transantiagomaster/MainActivity$20;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/MainActivity$20;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2172
    invoke-static {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->Favorite(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2189
    return-void
.end method

.method public final getMapView()Lcl/birdie/transantiagomaster/ITSMMapView;
    .locals 1

    .prologue
    .line 3500
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/IMapViewController;->getMapView()Lcl/birdie/transantiagomaster/ITSMMapView;

    move-result-object v0

    return-object v0
.end method

.method public final getMapViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 3508
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/IMapViewController;->getMapViewContainer()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final mostrarFragmento(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3028
    const-string v2, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mostrarFragmento: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    iget-boolean v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->activityPaused:Z

    if-eqz v2, :cond_0

    .line 3031
    const-string v2, "MainActivity"

    const-string v3, "mostrarFragmento: activityPaused true, ignorando!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :goto_0
    return-void

    .line 3035
    :cond_0
    const-string v2, "mapa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v2, :cond_1

    const-class v2, Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/GApp;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    .line 3037
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    :goto_1
    if-nez v0, :cond_10

    .line 3038
    const-string v2, "MainActivity"

    const-string v3, "mostrarFragmento: frag es null?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3035
    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    :cond_2
    const-string v2, "bip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragSaldoBip:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    if-nez v2, :cond_3

    const-class v2, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragSaldoBip:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    :cond_3
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragSaldoBip:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    goto :goto_1

    :cond_4
    const-string v2, "favoritos"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragFavoritos:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    if-nez v2, :cond_5

    const-class v2, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragFavoritos:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    :cond_5
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragFavoritos:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    goto :goto_1

    :cond_6
    const-string v2, "fotos"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragSocial:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    if-nez v2, :cond_7

    const-class v2, Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragSocial:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    :cond_7
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragSocial:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    goto :goto_1

    :cond_8
    const-string v2, "muro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragWall:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    if-nez v2, :cond_9

    const-class v2, Lcl/birdie/transantiagomaster/facebook/WallFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragWall:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    :cond_9
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragWall:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    goto :goto_1

    :cond_a
    const-string v2, "recorridos"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragRecorridos:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    if-nez v2, :cond_b

    const-class v2, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragRecorridos:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    :cond_b
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragRecorridos:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    goto/16 :goto_1

    :cond_c
    const-string v2, "itinerarios"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragItinerarios:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    if-nez v2, :cond_d

    const-class v2, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragItinerarios:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    :cond_d
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragItinerarios:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    goto/16 :goto_1

    :cond_e
    const-string v2, "planificar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragPlanificar:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    if-nez v2, :cond_f

    const-class v2, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragPlanificar:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    :cond_f
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragPlanificar:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    goto/16 :goto_1

    .line 3043
    .restart local v0    # "frag":Landroid/support/v4/app/Fragment;
    :cond_10
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    .line 3044
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    .line 3046
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    .line 3048
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isInLayout()Z

    .line 3050
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    .line 3052
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    .line 3054
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3056
    const-string v2, "MainActivity"

    const-string v3, "mostrarFragmento: fragmento ya es visible, ignorando!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3059
    :cond_11
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3060
    const v4, 0x1020002

    .line 3059
    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3061
    .local v1, "fragActual":Landroid/support/v4/app/Fragment;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mostrarFragmento: tag a mostrar: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3062
    if-nez v1, :cond_13

    .line 3063
    const-string v2, "MainActivity"

    const-string v4, "mostrarFragmento: fragActual es null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_12
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    .line 3074
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3075
    const/4 v4, 0x1

    .line 3074
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 3077
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->ShowFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3065
    :cond_13
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 3066
    const-string v2, "MainActivity"

    const-string v3, "mostrarFragmento: tag ya existe, ignorando!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    .end local v1    # "fragActual":Landroid/support/v4/app/Fragment;
    :cond_14
    move-object v0, v3

    goto/16 :goto_1
.end method

.method public final onActivarAds()V
    .locals 2

    .prologue
    .line 3543
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_0

    .line 3544
    const-string v0, "MainActivity"

    const-string v1, "onActivarAds: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :goto_0
    return-void

    .line 3548
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->showAds$1385ff()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 25
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 649
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityResult: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-super/range {p0 .. p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/birdie/transantiagomaster/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 653
    const/16 v4, 0x3eb

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 654
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->estaConectado()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 656
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 659
    .local v17, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v5, v5, Lcl/birdie/params/Preferencias;->twitter_userid:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v4, "username"

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v5, v5, Lcl/birdie/params/Preferencias;->twitter_username:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v4, "name"

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v5, v5, Lcl/birdie/params/Preferencias;->twitter_name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v4, "profile_image"

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v5, v5, Lcl/birdie/params/Preferencias;->twitter_profilepic:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    const-string v4, "network"

    const-string v5, "T"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "objeto JSON generado: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onSendUserInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v17    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/16 v4, 0x3ea

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 675
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v24

    .line 677
    .local v24, "sess":Lcom/facebook/Session;
    if-eqz v24, :cond_c

    .line 678
    invoke-static/range {v24 .. v24}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->saveToken(Lcom/facebook/Session;)V

    .line 681
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v4, :cond_1

    .line 682
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 685
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 686
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v5, 0x0

    iput-object v5, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 688
    :cond_1
    invoke-virtual/range {v24 .. v28}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 700
    .end local v24    # "sess":Lcom/facebook/Session;
    :cond_2
    :goto_1
    const/16 v4, 0x3e9

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 701
    invoke-direct/range {p0 .. p0}, Lcl/birdie/transantiagomaster/MainActivity;->checkFragment()V

    .line 703
    const-string v4, "MainActivity"

    const-string v5, "Reconocimiento de VOZ..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_d

    .line 705
    const-string v4, "MainActivity"

    const-string v5, "Reconocimiento de VOZ OK!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static/range {p0 .. p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->vibrar(Landroid/content/Context;)V

    .line 710
    const-string v4, "android.speech.extra.RESULTS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 712
    .local v16, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceRecognition:Z

    .line 713
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceMatches:Ljava/util/ArrayList;

    .line 719
    .end local v16    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_4

    .line 720
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v24

    .line 722
    .restart local v24    # "sess":Lcom/facebook/Session;
    if-eqz v24, :cond_4

    .line 723
    invoke-virtual/range {v24 .. v28}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 727
    .end local v24    # "sess":Lcom/facebook/Session;
    :cond_4
    const/4 v15, 0x0

    .line 728
    .local v15, "imagen":Landroid/graphics/Bitmap;
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityResult(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v4, 0x7b

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 730
    const-string v4, "MainActivity"

    const-string v5, "onActivityResult() callback desde la Galeria"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_5

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 733
    .local v23, "selectedImage":Landroid/net/Uri;
    if-eqz v23, :cond_5

    .line 735
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;

    if-eqz v4, :cond_5

    .line 736
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;

    .line 737
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/IPhotoTarget;->receivePhoto(Ljava/lang/String;)V

    .line 738
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v5, 0x0

    iput-object v5, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;

    .line 744
    .end local v23    # "selectedImage":Landroid/net/Uri;
    :cond_5
    const/16 v4, 0x7c

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_b

    .line 745
    const-string v4, "MainActivity"

    const-string v5, "onActivityResult() callback desde la Camara"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 749
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 753
    :try_start_1
    sget-object v4, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0x1000

    if-lt v4, v5, :cond_e

    .line 760
    const/4 v4, 0x4

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 768
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 771
    :try_start_2
    sget-object v4, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    .line 779
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .local v12, "dstWidth":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 780
    .local v11, "dstHeight":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    .line 781
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    .line 780
    const-wide/16 v21, 0x0

    .line 782
    .local v21, "ratio":D
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tama\u00f1o imagen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    const/16 v4, 0x2d0

    if-le v12, v4, :cond_6

    .line 787
    int-to-double v4, v12

    const-wide v6, 0x4086800000000000L    # 720.0

    div-double v21, v4, v6

    .line 789
    int-to-double v4, v11

    div-double v4, v4, v21

    double-to-int v11, v4

    .line 790
    const/16 v12, 0x2d0

    .line 793
    :cond_6
    const/16 v4, 0x2d0

    if-le v11, v4, :cond_7

    .line 794
    int-to-double v4, v11

    const-wide v6, 0x4086800000000000L    # 720.0

    div-double v21, v4, v6

    .line 796
    int-to-double v4, v12

    div-double v4, v4, v21

    double-to-int v12, v4

    .line 797
    const/16 v11, 0x2d0

    .line 799
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tama\u00f1o imagen final: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v12, v4, :cond_8

    .line 804
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v11, v4, :cond_11

    .line 807
    :cond_8
    const/4 v4, 0x0

    .line 806
    :try_start_3
    invoke-static {v15, v12, v11, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    .line 816
    .local v3, "resized":Landroid/graphics/Bitmap;
    :goto_4
    const/4 v10, 0x0

    .line 819
    .local v10, "angle":I
    :try_start_4
    new-instance v4, Landroid/media/ExifInterface;

    sget-object v5, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 820
    const/4 v14, 0x0

    .line 821
    .local v14, "exif":Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    .line 822
    const/4 v6, 0x1

    .line 820
    invoke-virtual {v4, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v19

    .line 824
    .local v19, "orientation":I
    const/4 v4, 0x6

    move/from16 v0, v19

    if-ne v0, v4, :cond_12

    .line 825
    const/16 v10, 0x5a

    .line 836
    .end local v14    # "exif":Landroid/media/ExifInterface;
    .end local v19    # "orientation":I
    :cond_9
    :goto_5
    if-eqz v10, :cond_a

    .line 837
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 838
    .local v8, "mat":Landroid/graphics/Matrix;
    int-to-float v4, v10

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 841
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 842
    :try_start_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 841
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v3

    .line 851
    .end local v8    # "mat":Landroid/graphics/Matrix;
    :cond_a
    :try_start_6
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 853
    new-instance v20, Ljava/io/FileOutputStream;

    sget-object v4, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 855
    .local v20, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x46

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 856
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V

    .line 857
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 859
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;

    if-eqz v4, :cond_b

    .line 860
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;

    .line 861
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcl/birdie/transantiagomaster/MainActivity;->Path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/IPhotoTarget;->receivePhoto(Ljava/lang/String;)V

    .line 862
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v5, 0x0

    iput-object v5, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 872
    .end local v3    # "resized":Landroid/graphics/Bitmap;
    .end local v10    # "angle":I
    .end local v11    # "dstHeight":I
    .end local v12    # "dstWidth":I
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "out":Ljava/io/FileOutputStream;
    .end local v21    # "ratio":D
    :cond_b
    :goto_6
    return-void

    .line 666
    .end local v15    # "imagen":Landroid/graphics/Bitmap;
    .restart local v17    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 667
    .local v13, "e":Ljava/lang/Exception;
    const-string v4, "MainActivity"

    const-string v5, "Excepcion en TWITTER_AUTH"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 690
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "obj":Lorg/json/JSONObject;
    .restart local v24    # "sess":Lcom/facebook/Session;
    :cond_c
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v4, :cond_2

    .line 691
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 694
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 695
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v5, 0x0

    iput-object v5, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    goto/16 :goto_1

    .line 715
    .end local v24    # "sess":Lcom/facebook/Session;
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceRecognition:Z

    .line 716
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceMatches:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 755
    .restart local v15    # "imagen":Landroid/graphics/Bitmap;
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v4

    const-string v4, "MainActivity"

    const-string v5, "error al obtener tama\u00f1o"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 761
    :cond_e
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0xc00

    if-lt v4, v5, :cond_f

    .line 762
    const/4 v4, 0x3

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_3

    .line 763
    :cond_f
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0x800

    if-lt v4, v5, :cond_10

    .line 764
    const/4 v4, 0x2

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_3

    .line 766
    :cond_10
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_3

    .line 773
    :catch_2
    move-exception v4

    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error al cargar imagen, inSampleSize "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 773
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 809
    .restart local v11    # "dstHeight":I
    .restart local v12    # "dstWidth":I
    .restart local v21    # "ratio":D
    :catch_3
    move-exception v4

    const-string v4, "MainActivity"

    const-string v5, "error al hacer resize de imagen"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 812
    :cond_11
    move-object v3, v15

    .restart local v3    # "resized":Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 826
    .restart local v10    # "angle":I
    .restart local v14    # "exif":Landroid/media/ExifInterface;
    .restart local v19    # "orientation":I
    :cond_12
    const/4 v4, 0x3

    move/from16 v0, v19

    if-ne v0, v4, :cond_13

    .line 827
    const/16 v10, 0xb4

    .line 828
    goto/16 :goto_5

    :cond_13
    const/16 v4, 0x8

    move/from16 v0, v19

    if-ne v0, v4, :cond_9

    .line 829
    const/16 v10, 0x10e

    goto/16 :goto_5

    .line 831
    .end local v14    # "exif":Landroid/media/ExifInterface;
    .end local v19    # "orientation":I
    :catch_4
    move-exception v13

    .line 832
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v4, "MainActivity"

    const-string v5, "error al obtener \u00e1ngulo exif"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 844
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v8    # "mat":Landroid/graphics/Matrix;
    :catch_5
    move-exception v4

    const-string v4, "MainActivity"

    const-string v5, "error al hacer rotaci\u00f3n de imagen"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 866
    .end local v8    # "mat":Landroid/graphics/Matrix;
    :catch_6
    move-exception v13

    .line 867
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v4, "MainActivity"

    const-string v5, "error al guardar imagen final"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public final onActualizarSocialFeed()V
    .locals 4

    .prologue
    .line 3409
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$42;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$42;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;

    invoke-direct {v1, v0}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://api.transantiagomaster.cl/socialfeed.php"

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3422
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 903
    const-string v0, "MainActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 905
    return-void
.end method

.method public final onBuscar(Ljava/lang/String;)V
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1677
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://open.mapquestapi.com/nominatim/v1/search?q="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1678
    const-string v3, "&format=json&countrycodes=CL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1679
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;

    invoke-direct {v0, p0, v4}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;-><init>(Lcl/birdie/transantiagomaster/MainActivity;B)V

    .line 1682
    .local v0, "m_progressTask":Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->mostrarDialogo()V

    .line 1683
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 1684
    return-void
.end method

.method public final onCheckMissingVoiceData()V
    .locals 4

    .prologue
    .line 2707
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v1, v1, Lcl/birdie/params/Preferencias;->NoInstalarVoz:Z

    if-nez v1, :cond_0

    .line 2708
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2710
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2711
    const v2, 0x7f0600f1

    .line 2710
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2709
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2712
    const v2, 0x7f0600fa

    .line 2713
    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$30;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/MainActivity$30;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2712
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2723
    const v2, 0x7f0600fb

    .line 2724
    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$31;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/MainActivity$31;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2723
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2736
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2738
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public final onClickParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;Z)V
    .locals 8
    .param p1, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .param p2, "ignoreZoom"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2444
    if-nez p2, :cond_0

    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 2475
    :goto_0
    return-void

    .line 2449
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-object p1, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 2450
    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-static {v2}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 2451
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/MainActivity;->onSetModoNavegacion(I)V

    .line 2453
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput v6, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->solicitudTiempos:I

    .line 2454
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput v6, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualTiemposOrigen:I

    .line 2456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2457
    .local v0, "t":J
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-wide v0, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->timestampUltimoTiempoParadero:J

    .line 2458
    if-eqz p1, :cond_1

    new-instance v2, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$23;

    invoke-direct {v3, p0, v0, v1, p1}, Lcl/birdie/transantiagomaster/MainActivity$23;-><init>(Lcl/birdie/transantiagomaster/MainActivity;JLcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-direct {v2, v3, p1}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->tiemposReferenciales:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->tiemposReferenciales:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.transantiagomaster.cl/simtx.php?teorico=1&par="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-static {v5}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 2459
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->vibrar(Landroid/content/Context;)V

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput v7, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->solicitudTiempos:I

    new-instance v2, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$22;

    invoke-direct {v3, p0, v0, v1, p1}, Lcl/birdie/transantiagomaster/MainActivity$22;-><init>(Lcl/birdie/transantiagomaster/MainActivity;JLcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-direct {v2, v3, p1}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    iput-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->tiempos:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->tiempos:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.transantiagomaster.cl/simtx.php?par="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-static {v5}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 2460
    :cond_2
    new-instance v2, Lcl/birdie/transantiagomaster/MainActivity$24;

    invoke-direct {v2, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$24;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2474
    sput-boolean v7, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    goto/16 :goto_0
.end method

.method public final onComplain(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Lcl/birdie/toolkit/LatLng;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Lcl/birdie/transantiagomaster/newobjetos/IFavorito;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 26
    .param p1, "redSocial"    # Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
    .param p2, "ll"    # Lcl/birdie/toolkit/LatLng;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "tr"    # Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    .param p5, "fav"    # Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    .param p6, "urlImagen"    # Ljava/lang/String;
    .param p7, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 2822
    move-object/from16 v0, p5

    instance-of v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v3, :cond_1

    .line 2823
    const-string v5, "s"

    .line 2824
    .local v5, "type":Ljava/lang/String;
    check-cast p5, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .end local p5    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    move-object/from16 v0, p5

    iget-object v6, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    .line 2832
    .local v6, "objeto":Ljava/lang/String;
    :goto_0
    if-nez p6, :cond_3

    .line 2833
    const-string v3, "MainActivity"

    const-string v4, "doComplainObject"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    const v3, 0x7f06014f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    .line 2835
    move-object/from16 v0, p4

    iget v7, v0, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->id:I

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcl/birdie/toolkit/LatLng;->lat:D

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcl/birdie/toolkit/LatLng;->lng:D

    .line 2836
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 v16, p7

    .line 2835
    invoke-direct/range {v3 .. v16}, Lcl/birdie/transantiagomaster/MainActivity;->doComplainObject(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2913
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "objeto":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 2825
    .restart local p5    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :cond_1
    move-object/from16 v0, p5

    instance-of v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-eqz v3, :cond_2

    .line 2826
    const-string v5, "l"

    .line 2827
    .restart local v5    # "type":Ljava/lang/String;
    check-cast p5, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .end local p5    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    move-object/from16 v0, p5

    iget-object v6, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    .line 2828
    .restart local v6    # "objeto":Ljava/lang/String;
    goto :goto_0

    .line 2829
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "objeto":Ljava/lang/String;
    .restart local p5    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :cond_2
    const-string v3, "MainActivity"

    const-string v4, "onComplain: fav no es paradero ni recorrido?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2838
    .end local p5    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "objeto":Ljava/lang/String;
    :cond_3
    const-string v3, "MainActivity"

    const-string v4, "doComplainObject con foto"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    sget-object v3, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 2840
    const-string v3, "MainActivity"

    const-string v4, "subiendo foto a Facebook"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :try_start_0
    invoke-static/range {p6 .. p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 2843
    .local v25, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcl/birdie/transantiagomaster/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2844
    invoke-static {v3}, Lcl/birdie/transantiagomaster/MainActivity;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v21

    .line 2846
    .local v21, "inputData":[B
    const v3, 0x7f060150

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    .line 2848
    new-instance v7, Lcl/birdie/transantiagomaster/MainActivity$34;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    move-object/from16 v14, p2

    move-object/from16 v15, p7

    invoke-direct/range {v7 .. v15}, Lcl/birdie/transantiagomaster/MainActivity$34;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Ljava/lang/String;Lcl/birdie/toolkit/LatLng;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2847
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->SubirFoto(Ljava/lang/String;[BLcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2868
    .end local v21    # "inputData":[B
    .end local v25    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v19

    .line 2869
    .local v19, "e":Ljava/lang/Exception;
    const-string v3, "Error al subir foto"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onError(Ljava/lang/String;)V

    .line 2870
    const-string v3, "foto"

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    .line 2872
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v3, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_TWITTER:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 2873
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "subiendo imagen a twitter con url "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    const/16 v24, 0x0

    .line 2876
    .local v24, "tempf":Ljava/io/File;
    const/16 v22, 0x0

    .line 2877
    .local v22, "istrm":Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 2880
    .local v20, "fname":Ljava/lang/String;
    :try_start_1
    invoke-static/range {p6 .. p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 2881
    .restart local v25    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcl/birdie/transantiagomaster/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v22

    .line 2882
    const-string v3, "tmp"

    const-string v4, ".tmp"

    new-instance v7, Ljava/io/File;

    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->TMCacheDir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v24

    .line 2883
    new-instance v17, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2884
    .local v17, "bos":Ljava/io/OutputStream;
    const/16 v23, 0x0

    .line 2885
    .local v23, "largo":I
    const/16 v3, 0x400

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 2887
    .local v18, "data":[B
    :goto_2
    const/4 v3, 0x0

    const/16 v4, 0x400

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v23

    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_6

    .line 2890
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2891
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 2897
    if-eqz v22, :cond_5

    .line 2899
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2904
    :cond_5
    :goto_3
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2906
    aput-object v20, v15, v3

    .line 2907
    .local v15, "fileImagenes":[Ljava/lang/String;
    const v3, 0x7f06014f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    .line 2908
    move-object/from16 v0, p4

    iget v7, v0, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->id:I

    .line 2909
    move-object/from16 v0, p2

    iget-wide v9, v0, Lcl/birdie/toolkit/LatLng;->lat:D

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcl/birdie/toolkit/LatLng;->lng:D

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 v16, p7

    .line 2908
    invoke-direct/range {v3 .. v16}, Lcl/birdie/transantiagomaster/MainActivity;->doComplainObject(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2910
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v4, 0x0

    iput-object v4, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    goto/16 :goto_1

    .line 2888
    .end local v15    # "fileImagenes":[Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2892
    .end local v17    # "bos":Ljava/io/OutputStream;
    .end local v18    # "data":[B
    .end local v23    # "largo":I
    .end local v25    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v19

    .line 2893
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "error al procesar archivo: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2897
    if-eqz v22, :cond_0

    .line 2899
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    goto/16 :goto_1

    .line 2896
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 2897
    if-eqz v22, :cond_7

    .line 2899
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2904
    :cond_7
    :goto_4
    throw v3

    :catch_3
    move-exception v4

    goto :goto_4

    .restart local v17    # "bos":Ljava/io/OutputStream;
    .restart local v18    # "data":[B
    .restart local v23    # "largo":I
    .restart local v25    # "uri":Landroid/net/Uri;
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public final onCount(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;)I
    .locals 3
    .param p1, "counter"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    .prologue
    .line 3675
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3676
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v1, p1}, Lcl/birdie/params/Preferencias;->getCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 3677
    .local v0, "cnt":I
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v1, p1, v0}, Lcl/birdie/params/Preferencias;->setCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;I)V

    .line 3678
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 3679
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->estaInicializadoExtendido()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->inicializar(Landroid/content/Context;)V

    .line 189
    :cond_0
    const v0, 0x7f040001

    const/4 v6, 0x0

    invoke-static {p0, v0, v6}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 192
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v0, p0}, Lcl/birdie/params/Preferencias;->leerNuevo(Landroid/content/Context;)V

    .line 194
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->setTheme(I)V

    .line 195
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    const-wide/16 v8, 0x5

    invoke-virtual {p0, v8, v9}, Lcl/birdie/transantiagomaster/MainActivity;->requestWindowFeature(J)V

    .line 199
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->setContentView(I)V

    .line 201
    if-eqz p1, :cond_6

    .line 203
    const-string v0, "selected_fragment_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    .line 204
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->restoreFromBundle(Landroid/os/Bundle;)V

    .line 206
    const-string v0, "numTasks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    .line 211
    :goto_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 212
    const-string v0, "mapa"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    .line 216
    :cond_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v0, v0, Lcl/birdie/params/Preferencias;->EstiloMapa:I

    packed-switch v0, :pswitch_data_0

    .line 220
    new-instance v0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    .line 228
    :goto_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    invoke-interface {v0, p0}, Lcl/birdie/transantiagomaster/IMapViewController;->inicializarActividad(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    const-string v0, "MainActivity"

    const-string v6, "mapViewController: inicializar FALSE"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 234
    const/4 v6, 0x0

    .line 233
    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 235
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 237
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 238
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(I)V

    .line 239
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v6, 0x7f020111

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    .line 241
    invoke-static {p0}, Lcl/birdie/toolkit/AppRater;->app_launched(Landroid/content/Context;)V

    .line 243
    invoke-static {p0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->inicializar(Landroid/app/Activity;)V

    .line 244
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, p1, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->Login(Landroid/app/Activity;Landroid/os/Bundle;Lcom/facebook/Session$StatusCallback;)V

    .line 246
    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->TOME_EL_BUS:Ljava/lang/String;

    const v0, 0x7f0600a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->HACIA:Ljava/lang/String;

    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->CAMINE_DESDE:Ljava/lang/String;

    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->TOME_EL_METRO:Ljava/lang/String;

    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->EN_LA_ESTACION:Ljava/lang/String;

    .line 247
    const v0, 0x7f0600a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->A_PIE:Ljava/lang/String;

    const v0, 0x7f0600a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->TRANSBORDOS:Ljava/lang/String;

    .line 250
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    iget-object v6, p0, Lcl/birdie/transantiagomaster/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, p0, v6}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 251
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 253
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v0, p0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->setListener(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 254
    invoke-static {p0}, Lcl/birdie/transantiagomaster/Pantalla;->setListener(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 257
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 258
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 259
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 260
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes$13462e()V

    .line 261
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v6, 0x7f020148

    invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 262
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes$13462e()V

    .line 263
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v6, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 264
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, p0, v6, v8}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 265
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v6, 0x7f03005f

    invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 266
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryMenu$13462e()V

    .line 267
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 268
    const v6, 0x7f08014f

    new-instance v8, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;

    invoke-direct {v8}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;-><init>()V

    invoke-virtual {v0, v6, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 270
    new-instance v0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->barraDerechaFragment:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    .line 271
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 272
    const v6, 0x7f080150

    iget-object v8, p0, Lcl/birdie/transantiagomaster/MainActivity;->barraDerechaFragment:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    invoke-virtual {v0, v6, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 275
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 276
    .local v7, "b":Landroid/os/Bundle;
    if-eqz v7, :cond_3

    .line 277
    const-string v0, "reconocerVoz"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->reconocerVoz:Z

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "lat"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    .line 286
    .local v1, "lat":D
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "lng"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    .line 287
    .local v3, "lng":D
    const-wide/16 v8, 0x0

    cmpl-double v0, v1, v8

    if-eqz v0, :cond_4

    const-wide/16 v8, 0x0

    cmpl-double v0, v3, v8

    if-eqz v0, :cond_4

    .line 288
    const-string v0, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "onCreate: centrando en "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 291
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 293
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->resetTimer()V

    .line 296
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "paradero"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "par":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 298
    const-string v0, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "onCreate: paradero "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->onSelectFavorito(Lcl/birdie/transantiagomaster/newobjetos/IFavorito;)V

    .line 304
    .end local v5    # "par":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->onRefrescaProgressBar()V

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v0, v6, :cond_5

    .line 308
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->interstitial:Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->interstitial:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    const-string v6, "ca-app-pub-0124360635043881/5241783480"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->interstitial:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v6, Lcl/birdie/transantiagomaster/MainActivity$1;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/MainActivity$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 317
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->refrescarIntersticial()V

    .line 319
    :cond_5
    return-void

    .line 209
    .end local v1    # "lat":D
    .end local v3    # "lng":D
    .end local v7    # "b":Landroid/os/Bundle;
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    goto/16 :goto_0

    .line 224
    :pswitch_0
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    goto/16 :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateComment(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1003
    const v0, 0x7f060135

    .line 1004
    const/4 v1, 0x1

    .line 1003
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1005
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$6;

    invoke-direct {v0, p0, p3}, Lcl/birdie/transantiagomaster/MainActivity$6;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {p1, p2, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->CreateComment(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1025
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 389
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public final onCreatePost(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 2
    .param p1, "comentario"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 3084
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$36;

    invoke-direct {v0, p0, p2, p1, p3}, Lcl/birdie/transantiagomaster/MainActivity$36;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->onRequestFacebookPublishPermissions(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)Z

    move-result v0

    .line 3131
    if-nez v0, :cond_0

    .line 3132
    const-string v0, "MainActivity"

    const-string v1, "onCreatePost: error al pedir permisos"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    if-eqz p3, :cond_0

    .line 3134
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 3137
    :cond_0
    return-void
.end method

.method protected final onDescargarBaseDatos(ZZ)V
    .locals 2
    .param p1, "descargarBd"    # Z
    .param p2, "descargarMapa"    # Z

    .prologue
    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDescargarBaseDatos con descargarBd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descargarMapa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2656
    if-eqz p1, :cond_0

    .line 2657
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$28;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$28;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-static {p0, v0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->descargarBaseDatos(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2672
    :cond_0
    if-eqz p2, :cond_1

    .line 2673
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$29;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$29;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-static {p0, v0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->descargarMapa(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2687
    :cond_1
    return-void
.end method

.method public final onDescargarItinerario()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1498
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getServicioActual()Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v0

    .line 1502
    .local v0, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    if-nez v0, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1505
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1506
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-virtual {v2, v0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->getServicio(Lcl/birdie/transantiagomaster/newobjetos/Servicio;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1507
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->procesarDescargaItinerarioPost()V

    goto :goto_0

    .line 1511
    :cond_1
    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;

    invoke-direct {v1, p0, v5}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;-><init>(Lcl/birdie/transantiagomaster/MainActivity;B)V

    .line 1512
    .local v1, "threadDescargador":Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;
    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;->mostrarDialogo()V

    .line 1513
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.transantiagomaster.cl/itinerario.php?style=2&servicio="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1515
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1516
    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v4

    .line 1515
    invoke-static {v4}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1513
    invoke-static {v1, v2}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onDescargarRecorridos(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 4
    .param p1, "ifbCallback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v3, 0x1

    .line 3464
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3467
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    .line 3468
    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->getServicios()[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v1

    .line 3467
    iput-object v1, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 3471
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-nez v0, :cond_2

    .line 3474
    const-string v0, ""

    .line 3475
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3476
    const v2, 0x7f060067

    .line 3475
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3472
    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;

    .line 3477
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://api.transantiagomaster.cl/db/servicios.gz"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 3484
    :cond_1
    :goto_0
    return-void

    .line 3481
    :cond_2
    if-eqz p1, :cond_1

    .line 3482
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2542
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 2544
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 2545
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->setListener(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 2546
    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setListener(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 2549
    iput-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    .line 2550
    return-void
.end method

.method public final onDismissSocialLogin()V
    .locals 1

    .prologue
    .line 3583
    const-string v0, "requestlogin"

    invoke-static {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->dismissDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 3585
    return-void
.end method

.method public final onDismissTwitterLogin()V
    .locals 1

    .prologue
    .line 3577
    const-string v0, "requesttwitterlogin"

    invoke-static {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->dismiss(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 3579
    return-void
.end method

.method public final onDisplayComment(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1184
    const-class v3, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1183
    check-cast v1, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    .line 1185
    .local v1, "displayComment":Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1186
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "IdPost"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1189
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1190
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x1020002

    const-string v4, "displaycomment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1191
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1192
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1193
    return-void
.end method

.method public final onError(I)V
    .locals 1
    .param p1, "strid"    # I

    .prologue
    .line 3159
    invoke-virtual {p0, p1}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->onError(Ljava/lang/String;)V

    .line 3160
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 924
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$2;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$2;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 930
    return-void
.end method

.method public final onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final onGetPhoto(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1046
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$8;

    invoke-direct {v0, p0, p2}, Lcl/birdie/transantiagomaster/MainActivity$8;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->GetPhotoFromId(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1057
    return-void
.end method

.method public final onGetPhotosAlbum(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 956
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$4;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->GetPhotosAlbum(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 978
    return-void
.end method

.method public final onGetPost(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1144
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$13;

    invoke-direct {v0, p0, p2}, Lcl/birdie/transantiagomaster/MainActivity$13;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->GetPostFromId(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1155
    return-void
.end method

.method public final onGetString$47921032()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2812
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onGetUrlProfilePicture(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p2, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/UserModel;",
            ">;",
            "Lcl/birdie/transantiagomaster/facebook/IFBCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1127
    .line 1128
    .local p1, "users":Ljava/util/Collection;, "Ljava/util/Collection<Lcl/birdie/transantiagomaster/facebook/models/UserModel;>;"
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$12;

    invoke-direct {v0, p0, p2}, Lcl/birdie/transantiagomaster/MainActivity$12;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1127
    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->GetUrlProfilePictureForUsers(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1140
    return-void
.end method

.method public final onGetUrlProfilePictureUI(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p2, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/UserModel;",
            ">;",
            "Lcl/birdie/transantiagomaster/facebook/IFBCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p1, "users":Ljava/util/Collection;, "Ljava/util/Collection<Lcl/birdie/transantiagomaster/facebook/models/UserModel;>;"
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcl/birdie/transantiagomaster/MainActivity$11;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1122
    return-void
.end method

.method public final onGetWallPosts(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 8
    .param p1, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1268
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v1, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    monitor-enter v1

    .line 1269
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1270
    sget-wide v2, Lcl/birdie/transantiagomaster/MainActivity;->lastWallRequest:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1271
    const-wide/16 v6, 0x2710

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1268
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcl/birdie/transantiagomaster/MainActivity;->lastWallRequest:J

    .line 1276
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$16;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$16;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->GetPostsTMFromPHPSocial(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1381
    return-void

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onHideBuscarDialog()V
    .locals 1

    .prologue
    .line 1633
    const-string v0, "buscarlugar"

    invoke-static {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->dismissDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method public final onHideBuscarProgress()V
    .locals 1

    .prologue
    .line 1623
    const-string v0, "buscarProgress"

    invoke-static {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->dismissDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 1624
    return-void
.end method

.method public final onImageSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 913
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 914
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "IdImage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragDisplayPhoto:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    if-nez v1, :cond_0

    .line 917
    const-class v1, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-static {p0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragDisplayPhoto:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    .line 918
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragDisplayPhoto:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 919
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragDisplayPhoto:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    const-string v2, "displayphoto"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcl/birdie/transantiagomaster/MainActivity;->ShowFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 920
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown: tecla "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 456
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 457
    :cond_0
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->volverModoNormal(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onLaunchURL(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 3394
    const/4 v1, 0x0

    .line 3396
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3397
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    .line 3398
    const-string v4, "android.intent.action.VIEW"

    .line 3397
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3400
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 3405
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3401
    :catch_0
    move-exception v0

    .line 3402
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "excepcion al lanzar url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3401
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public final onLike(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 982
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$5;

    invoke-direct {v0, p0, p2}, Lcl/birdie/transantiagomaster/MainActivity$5;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->LikePost(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 998
    return-void
.end method

.method public final onLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1029
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$7;

    invoke-direct {v0, p0, p2}, Lcl/birdie/transantiagomaster/MainActivity$7;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PhotoLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1042
    return-void
.end method

.method public final onMapUpdate(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 3186
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$39;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$39;-><init>(Lcl/birdie/transantiagomaster/MainActivity;I)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3217
    return-void
.end method

.method public final onMapaCentrar()V
    .locals 10

    .prologue
    const-wide/16 v1, 0x0

    .line 3373
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    iget-boolean v0, v0, Lcl/birdie/toolkit/Posicion;->valid:Z

    if-nez v0, :cond_0

    .line 3375
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->onError(Ljava/lang/String;)V

    .line 3390
    :goto_0
    return-void

    .line 3378
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    iget-object v0, v0, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0}, Lcl/birdie/toolkit/LatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v9

    .line 3379
    .local v9, "pnt":Lcom/google/android/maps/GeoPoint;
    if-eqz v9, :cond_1

    .line 3380
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v0, v9}, Lcl/birdie/toolkit/LatLng;-><init>(Lcom/google/android/maps/GeoPoint;)V

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 3381
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_ON:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 3383
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    if-eqz v0, :cond_1

    .line 3384
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setBbox(DDDD)V

    .line 3385
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->resetTimer()V

    .line 3389
    :cond_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v1, 0x0

    iput v1, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    goto :goto_0
.end method

.method public final onMapaDibujarUbicacion()V
    .locals 2

    .prologue
    .line 3302
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_0

    .line 3304
    const-string v0, "MainActivity"

    const-string v1, "onMapaDibujarUbicacion: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :goto_0
    return-void

    .line 3307
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarUbicacion()V

    goto :goto_0
.end method

.method public final onMapaRefrescarOverlays()V
    .locals 2

    .prologue
    .line 3281
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_0

    .line 3283
    const-string v0, "MainActivity"

    const-string v1, "onMapaRefrescarOverlays: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    :goto_0
    return-void

    .line 3286
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->refrescarOverlays()V

    goto :goto_0
.end method

.method public final onMostrarIntersticial()V
    .locals 2

    .prologue
    .line 3716
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 3717
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->interstitial:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->interstitial:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3719
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->interstitial:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 3722
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 540
    const-string v1, "MainActivity"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 543
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "reconocerVoz"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->reconocerVoz:Z

    .line 546
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 415
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 436
    :goto_0
    return v0

    .line 419
    :sswitch_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu()V

    goto :goto_0

    .line 423
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v1}, Lcl/birdie/transantiagomaster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 432
    :sswitch_2
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$44;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/MainActivity$44;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-static {p0, v1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->sendRequestDialog(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f060197

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    goto :goto_0

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08016d -> :sswitch_1
        0x7f08016e -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->activityPaused:Z

    .line 880
    invoke-static {}, Lcl/birdie/transantiagomaster/GPSController;->stop()V

    .line 884
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 885
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 886
    return-void
.end method

.method public final onPostLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0
    .param p1, "postId"    # Ljava/lang/String;
    .param p2, "ifbCallback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 3567
    invoke-static {p1, p2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PostLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 3568
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public final onProgressBarAddTask()V
    .locals 1

    .prologue
    .line 3661
    iget v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    .line 3663
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->onRefrescaProgressBar()V

    .line 3664
    return-void
.end method

.method public final onProgressBarRemoveTask()V
    .locals 1

    .prologue
    .line 3668
    iget v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    .line 3670
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->onRefrescaProgressBar()V

    .line 3671
    return-void
.end method

.method public final onRequestFacebookPublishPermissions(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)Z
    .locals 4
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v1, 0x1

    .line 347
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 349
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_0

    .line 350
    const/4 v1, 0x0

    .line 366
    :goto_0
    return v1

    .line 353
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 354
    sget-object v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PUBLISH_PERMISSIONS:Ljava/util/List;

    .line 353
    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    .line 354
    if-nez v2, :cond_1

    .line 355
    const-string v2, "MainActivity"

    const-string v3, "requestNewPublishPermissions"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iput-object p1, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 358
    new-instance v2, Lcom/facebook/Session$NewPermissionsRequest;

    .line 359
    sget-object v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PUBLISH_PERMISSIONS:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 360
    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v2}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 365
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onRequestLogin()V
    .locals 2

    .prologue
    .line 3488
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 3489
    return-void
.end method

.method public final onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 2
    .param p1, "type"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;
    .param p2, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 934
    .line 935
    const-string v0, "requestlogin"

    .line 936
    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$3;

    invoke-direct {v1, p0, p2}, Lcl/birdie/transantiagomaster/MainActivity$3;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 934
    invoke-static {p0, p1, v0, v1}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 948
    return-void
.end method

.method public final onRequestTwitterLogin(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 3496
    const-string v0, "requesttwitterlogin"

    invoke-static {p0, v0, p1}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->show(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 3497
    return-void
.end method

.method public final onRequestTwitterLogout()V
    .locals 0

    .prologue
    .line 3572
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->desconectar()V

    .line 3573
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestart()V

    .line 508
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app:Landroid/app/Application;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/GPSController;->startLocationUpdate(Landroid/content/Context;)V

    .line 510
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->checkFragment()V

    .line 511
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 601
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 605
    const-string v1, "selected_fragment_tag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    const-string v1, "selected_fragment_tag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRestoreInstanceState: tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 613
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    const-string v1, "numTasks"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    const-string v1, "numTasks"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    .line 616
    :cond_1
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v1, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->restoreFromBundle(Landroid/os/Bundle;)V

    .line 618
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    if-eqz v1, :cond_2

    .line 619
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    invoke-interface {v1, p1}, Lcl/birdie/transantiagomaster/IMapViewController;->restoreFromBundle(Landroid/os/Bundle;)V

    .line 620
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 551
    const-string v1, "MainActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 554
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/MainActivity;->activityPaused:Z

    .line 556
    invoke-static {}, Lcl/birdie/transantiagomaster/GPSController;->estaInicializado()Z

    move-result v1

    if-nez v1, :cond_3

    .line 557
    invoke-static {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->inicializarGPS(Landroid/content/Context;)V

    .line 564
    :goto_0
    iget-boolean v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->reconocerVoz:Z

    if-eqz v1, :cond_0

    .line 565
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/MainActivity;->reconocerVoz:Z

    .line 566
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerVoz()V

    .line 570
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 571
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onSessionStateChange$2514babc(Lcom/facebook/Session;Lcom/facebook/SessionState;)V

    .line 575
    :cond_2
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 576
    return-void

    .line 562
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_3
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->app:Landroid/app/Application;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/GPSController;->startLocationUpdate(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onResumeFragments()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 580
    const-string v0, "MainActivity"

    const-string v1, "onResumeFragments()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResumeFragments()V

    .line 586
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->reconocerVoz:Z

    if-eqz v0, :cond_0

    .line 587
    iput-boolean v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->reconocerVoz:Z

    .line 588
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerVoz()V

    .line 590
    :cond_0
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceRecognition:Z

    if-eqz v0, :cond_1

    .line 591
    iput-boolean v2, p0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceRecognition:Z

    .line 592
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    .line 593
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fromVoiceMatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerTexto(Ljava/util/ArrayList;)V

    .line 596
    :cond_1
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->checkFragment()V

    .line 597
    return-void
.end method

.method public final onRevisarLayers()V
    .locals 2

    .prologue
    .line 3291
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_1

    .line 3293
    const-string v0, "MainActivity"

    const-string v1, "onRevisarLayers: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    :cond_0
    :goto_0
    return-void

    .line 3296
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 3297
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-static {v0, p0}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->revisarLayers(Lcl/birdie/transantiagomaster/ITSMMapView;Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 624
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 627
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveInstanceState: selected fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    const-string v0, "selected_fragment_tag"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->selectedFragmentTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    const-string v0, "numTasks"

    iget v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    invoke-static {p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->saveSession(Landroid/os/Bundle;)V

    .line 634
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 635
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->saveToBundle(Landroid/os/Bundle;)V

    .line 637
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->mapViewController:Lcl/birdie/transantiagomaster/IMapViewController;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/IMapViewController;->saveToBundle(Landroid/os/Bundle;)V

    .line 639
    :cond_1
    return-void
.end method

.method public final onSeleccionarItinerario()V
    .locals 6

    .prologue
    .line 3620
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3624
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    array-length v3, v4

    .line 3625
    .local v3, "sz":I
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 3626
    .local v2, "itinerarios":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 3632
    const v4, 0x7f06009b

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3633
    new-instance v4, Lcl/birdie/transantiagomaster/MainActivity$45;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/MainActivity$45;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3645
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3646
    return-void

    .line 3627
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Itinerario "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3628
    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3629
    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3630
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    aget-object v5, v5, v1

    .line 3631
    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3630
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3627
    aput-object v4, v2, v1

    .line 3626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final onSelectFavorito(Lcl/birdie/transantiagomaster/newobjetos/IFavorito;)V
    .locals 9
    .param p1, "f"    # Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2479
    if-nez p1, :cond_1

    .line 2534
    :cond_0
    :goto_0
    return-void

    .line 2482
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSelectFavorito: select "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2483
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->onShowMapa()V

    .line 2487
    invoke-static {}, Lcl/birdie/transantiagomaster/MainActivity;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito()[I

    move-result-object v4

    invoke-interface {p1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v5

    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2490
    :pswitch_1
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2493
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v4

    .line 2494
    :try_start_0
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderosPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v5, :cond_2

    .line 2495
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderosPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    if-lt v3, v6, :cond_3

    .line 2493
    :cond_2
    monitor-exit v4

    .line 2509
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v4

    .line 2510
    :try_start_1
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-object p1, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritoSeleccionado:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 2511
    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 2512
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 2509
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2495
    :cond_3
    :try_start_2
    aget-object v0, v5, v3

    .line 2497
    .local v0, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    iget-object v7, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-interface {p1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2498
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onSelectFavorito: click paradero "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2499
    iget-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2498
    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 2501
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onClickParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;Z)V

    .line 2502
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2493
    .end local v0    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2495
    .restart local v0    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2516
    .end local v0    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :pswitch_2
    new-instance v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;-><init>()V

    .line 2518
    .local v1, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    .line 2519
    iput v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->sentido:I

    .line 2521
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2522
    .local v2, "textos":[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 2523
    aget-object v3, v2, v3

    iput-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    .line 2524
    aget-object v3, v2, v6

    iput-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    .line 2530
    :goto_2
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v3, v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setServicioActual(Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V

    .line 2532
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->onDescargarItinerario()V

    goto/16 :goto_0

    .line 2526
    :cond_5
    const-string v3, "---"

    iput-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    .line 2527
    const-string v3, "---"

    iput-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    goto :goto_2

    .line 2487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onSelectSource$f9f2f5c(Lcl/birdie/transantiagomaster/IPhotoTarget;)V
    .locals 5
    .param p1, "target"    # Lcl/birdie/transantiagomaster/IPhotoTarget;

    .prologue
    .line 1165
    const-string v3, "selectsource"

    .line 1167
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1168
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1169
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 1170
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1173
    :cond_0
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iput-object p1, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;

    .line 1175
    new-instance v2, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;-><init>()V

    .line 1176
    .local v2, "selectFragment":Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;
    invoke-static {p0}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->setTarget(Lcl/birdie/transantiagomaster/facebook/IUploadPhoto;)V

    .line 1177
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->setCancelable(Z)V

    .line 1178
    invoke-virtual {v2, v0, v3}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1179
    return-void
.end method

.method public final onSendUserInfo(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 2974
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/JSONSenderAsync;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/facebook/JSONSenderAsync;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 2976
    return-void
.end method

.method public final onSetGApp(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 0
    .param p1, "gApp"    # Lcl/birdie/transantiagomaster/GApp;

    .prologue
    .line 3312
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    .line 3314
    return-void
.end method

.method public final onSetModoNavegacion(I)V
    .locals 2
    .param p1, "modo"    # I

    .prologue
    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetModoNavegacion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2221
    invoke-static {p1}, Lcl/birdie/transantiagomaster/Pantalla;->setModoNavegacion(I)V

    .line 2223
    packed-switch p1, :pswitch_data_0

    .line 2251
    :pswitch_0
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->desactivarModo()V

    .line 2252
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    .line 2255
    :cond_0
    :goto_0
    return-void

    .line 2225
    :pswitch_1
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->activarModoParaderoRecorrido()V

    .line 2226
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v0, :cond_0

    .line 2227
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarLetreroParadero()V

    goto :goto_0

    .line 2230
    :pswitch_2
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->setItinerarioLayer()V

    .line 2231
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->activarModoParaderoRecorrido()V

    .line 2232
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarLetreroRecorrido()V

    goto :goto_0

    .line 2236
    :pswitch_3
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->desactivarModo()V

    .line 2237
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarLetreroPlanificacion()V

    goto :goto_0

    .line 2241
    :pswitch_4
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->desactivarModo()V

    .line 2242
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarLetreroBip()V

    goto :goto_0

    .line 2246
    :pswitch_5
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/MainActivity;->desactivarModo()V

    .line 2247
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v0, :cond_0

    .line 2248
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarLetreroMetro()V

    goto :goto_0

    .line 2223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onShowBarraDerecha()V
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->onActualizarSocialFeed()V

    .line 3368
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showSecondaryMenu()V

    .line 3369
    return-void
.end method

.method public final onShowBuscarProgress()V
    .locals 2

    .prologue
    .line 1617
    const v0, 0x7f06004d

    .line 1618
    const-string v1, "buscarProgress"

    .line 1617
    invoke-static {p0, v0, v1}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;ILjava/lang/String;)V

    .line 1619
    return-void
.end method

.method public final onShowComplainDialog(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V
    .locals 1
    .param p1, "params"    # Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    .prologue
    .line 2917
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$35;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$35;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2970
    return-void
.end method

.method public final onShowContent()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 450
    return-void
.end method

.method public final onShowFavoritos()V
    .locals 1

    .prologue
    .line 3325
    const-string v0, "favoritos"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 3326
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 3327
    return-void
.end method

.method public final onShowFotos()V
    .locals 1

    .prologue
    .line 3349
    const-string v0, "fotos"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 3350
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 3351
    return-void
.end method

.method public final onShowItinerarios()V
    .locals 1

    .prologue
    .line 3337
    const-string v0, "itinerarios"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 3338
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 3339
    return-void
.end method

.method public final onShowLugaresDialog()V
    .locals 5

    .prologue
    .line 1639
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1640
    .local v3, "sz":I
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 1641
    .local v2, "lugares":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 1645
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1646
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060084

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1647
    new-instance v4, Lcl/birdie/transantiagomaster/MainActivity$18;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/MainActivity$18;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1667
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1668
    return-void

    .line 1642
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    .line 1643
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->descripcion:Ljava/lang/String;

    .line 1642
    aput-object v4, v2, v1

    .line 1641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final onShowMapa()V
    .locals 1

    .prologue
    .line 3318
    const-string v0, "mapa"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 3320
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 3321
    return-void
.end method

.method public final onShowMuro()V
    .locals 1

    .prologue
    .line 3343
    const-string v0, "muro"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 3344
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 3345
    return-void
.end method

.method public final onShowPlanificar()V
    .locals 1

    .prologue
    .line 3355
    const-string v0, "planificar"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 3356
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 3357
    return-void
.end method

.method public final onShowRecorridos()V
    .locals 1

    .prologue
    .line 1464
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-nez v0, :cond_0

    .line 1465
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$17;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$17;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->onDescargarRecorridos(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1481
    :goto_0
    return-void

    .line 1478
    :cond_0
    const-string v0, "recorridos"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    goto :goto_0
.end method

.method public final onShowSaldoBip()V
    .locals 1

    .prologue
    .line 3331
    const-string v0, "bip"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 3332
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->menu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 3333
    return-void
.end method

.method public final onShowSpeechHelp(Z)V
    .locals 5
    .param p1, "capturar"    # Z

    .prologue
    .line 2742
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2743
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2744
    const v4, 0x7f0600f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2745
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2746
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2747
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2748
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2749
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2750
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2743
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2751
    .local v1, "mensaje":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2752
    if-eqz p1, :cond_0

    .line 2753
    const-string v2, "OK"

    .line 2754
    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$32;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/MainActivity$32;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2753
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2780
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2781
    return-void

    .line 2775
    :cond_0
    const-string v2, "OK"

    .line 2776
    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$33;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/MainActivity$33;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2775
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public final onSpeechCommand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1736
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->onShowMapa()V

    .line 1738
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/speech/Speech;->estaInicializado()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->onError(Ljava/lang/String;)V

    .line 1757
    :goto_0
    return-void

    .line 1744
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v0, v0, Lcl/birdie/params/Preferencias;->AyudaVoz:Z

    if-eqz v0, :cond_1

    .line 1745
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/birdie/params/Preferencias;->AyudaVoz:Z

    .line 1746
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 1747
    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/MainActivity;->onShowSpeechHelp(Z)V

    goto :goto_0

    .line 1749
    :cond_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/MainActivity;->checkVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1750
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerVoz()V

    goto :goto_0

    .line 1753
    :cond_2
    const v0, 0x7f0600f9

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1752
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1754
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2564
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 2566
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v0, p0}, Lcl/birdie/params/Preferencias;->leerNuevo(Landroid/content/Context;)V

    .line 2567
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_1

    .line 2568
    const-string v0, "MainActivity"

    const-string v1, "onRevisarLayers: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_0
    :goto_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v0, p0}, Lcl/birdie/transantiagomaster/speech/Speech;->inicializar(Landroid/content/Context;)V

    .line 2576
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 2578
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$25;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/MainActivity$25;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    invoke-static {v0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->revisarBaseDatos(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2606
    return-void

    .line 2571
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->refrescarPreferencias()V

    goto :goto_0
.end method

.method public final onStartVoiceRecognition()V
    .locals 3

    .prologue
    .line 2691
    const-string v1, "MainActivity"

    const-string v2, "onStartVoiceRecognition"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2693
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 2694
    const-string v1, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2695
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2694
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2698
    :cond_0
    const-string v1, "android.speech.extra.PROMPT"

    const-string v2, "Diga su comando"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2699
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 2700
    const-string v2, "web_search"

    .line 2699
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2701
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2702
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2703
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Lcl/birdie/transantiagomaster/GPSController;->stop()V

    .line 517
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/speech/Speech;->cerrar()V

    .line 519
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 522
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;

    .line 527
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 536
    return-void
.end method

.method public final onToast(I)V
    .locals 1
    .param p1, "toast"    # I

    .prologue
    .line 3150
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$38;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$38;-><init>(Lcl/birdie/transantiagomaster/MainActivity;I)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3155
    return-void
.end method

.method public final onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 3443
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTrackEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3449
    :try_start_0
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v1

    .line 3450
    .local v1, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    if-eqz v1, :cond_0

    .line 3455
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2, p3, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3460
    .end local v1    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    :cond_0
    :goto_0
    return-void

    .line 3457
    :catch_0
    move-exception v0

    .line 3458
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error en sendEvent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onTrackView(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 3426
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTrackView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3431
    :try_start_0
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v1

    .line 3432
    .local v1, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    if-eqz v1, :cond_0

    .line 3433
    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    const-string v3, "&cd"

    invoke-virtual {v2, v3, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3438
    .end local v1    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    :cond_0
    :goto_0
    return-void

    .line 3435
    :catch_0
    move-exception v0

    .line 3436
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error en sendView: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onVibrate()V
    .locals 0

    .prologue
    .line 2554
    invoke-static {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->vibrar(Landroid/content/Context;)V

    .line 2555
    return-void
.end method

.method public final redDisponible()Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
    .locals 1

    .prologue
    .line 2111
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->estaConectado()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    sget-object v0, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_TWITTER:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    .line 2115
    :goto_0
    return-object v0

    .line 2113
    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2114
    sget-object v0, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    goto :goto_0

    .line 2115
    :cond_1
    sget-object v0, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_NINGUNA:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    goto :goto_0
.end method

.method public final requestAdLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "useLoc"    # Landroid/location/Location;

    .prologue
    .line 3518
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v0, :cond_0

    .line 3519
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/GApp;->requestAdLocation(Landroid/location/Location;)V

    .line 3520
    :cond_0
    return-void
.end method

.method public final setCenter(Lcom/google/android/maps/GeoPoint;)V
    .locals 2
    .param p1, "myLocation"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 3221
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_0

    .line 3224
    const-string v0, "MainActivity"

    const-string v1, "setCenter: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    :goto_0
    return-void

    .line 3228
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-nez v0, :cond_1

    .line 3229
    const-string v0, "MainActivity"

    const-string v1, "setCenter: mapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3233
    :cond_1
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$40;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$40;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcom/google/android/maps/GeoPoint;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final setCenterLatLng(Lcl/birdie/toolkit/LatLng;)V
    .locals 2
    .param p1, "myLocation"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 3247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCenterLatLng: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3249
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_0

    .line 3250
    const-string v0, "MainActivity"

    const-string v1, "setCenterLatLng: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    :goto_0
    return-void

    .line 3254
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-nez v0, :cond_1

    .line 3255
    const-string v0, "MainActivity"

    const-string v1, "setCenterLatLng: mapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3259
    :cond_1
    new-instance v0, Lcl/birdie/transantiagomaster/MainActivity$41;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$41;-><init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/toolkit/LatLng;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final setItinerarioLayer()V
    .locals 2

    .prologue
    .line 3177
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v0, :cond_0

    .line 3179
    const-string v0, "MainActivity"

    const-string v1, "setItinerarioLayer: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    :goto_0
    return-void

    .line 3181
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->setItinerarioLayer()V

    goto :goto_0
.end method

.method public final volverModoNormal(Z)Z
    .locals 4
    .param p1, "handler"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 465
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 466
    :try_start_0
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v3, :pswitch_data_0

    .line 465
    monitor-exit v2

    move v0, v1

    .line 500
    :goto_0
    return v0

    .line 472
    :pswitch_0
    if-eqz p1, :cond_1

    .line 473
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onSetModoNavegacion(I)V

    .line 476
    :goto_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-nez v1, :cond_2

    .line 477
    const-string v1, "MainActivity"

    const-string v3, "volverModoNormal: fragMapa null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    :goto_2
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v3, 0x0

    iput-object v3, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bmpBanner:Landroid/graphics/Bitmap;

    .line 484
    const/4 v1, 0x1

    sput-boolean v1, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 485
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 475
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setModoNavegacion(I)V

    goto :goto_1

    .line 479
    :cond_2
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/GApp;->clearItinerarioLayer()V

    .line 480
    if-nez p1, :cond_0

    .line 481
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    goto :goto_2

    .line 488
    :pswitch_1
    if-eqz p1, :cond_4

    .line 489
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onSetModoNavegacion(I)V

    .line 492
    :goto_3
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/GApp;->dibujarLetreroPlanificacion()V

    .line 495
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 496
    monitor-exit v2

    goto :goto_0

    .line 491
    :cond_4
    const/4 v1, 0x2

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setModoNavegacion(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
