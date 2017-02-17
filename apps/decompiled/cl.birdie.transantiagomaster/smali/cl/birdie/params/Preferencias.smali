.class public final Lcl/birdie/params/Preferencias;
.super Ljava/lang/Object;
.source "Preferencias.java"


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$Counter:[I


# instance fields
.field public AyudaVoz:Z

.field public CapturarMediaButton:Z

.field public ComplainsJson:Ljava/lang/String;

.field public EstiloMapa:I

.field public ModoMapa:I

.field public NoInstalarVoz:Z

.field public NumeroEjecuciones:I

.field public SaldoBipFecha:Ljava/lang/String;

.field public SaldoBipNumero:Ljava/lang/String;

.field public SaldoBipRegexpError:Ljava/lang/String;

.field public SaldoBipRegexpFecha:Ljava/lang/String;

.field public SaldoBipRegexpGlosaError:Ljava/lang/String;

.field public SaldoBipRegexpPideRut:Ljava/lang/String;

.field public SaldoBipRegexpSaldo:Ljava/lang/String;

.field public SaldoBipRut:Ljava/lang/String;

.field public SaldoBipTipoTarjeta:I

.field public SaldoBipURL:Ljava/lang/String;

.field public SaldoBipUpdate:Ljava/util/Date;

.field public SaldoBipValor:Ljava/lang/String;

.field public SaldoTarjetaBipURL:Ljava/lang/String;

.field public UsarGPS:Z

.field public UsarRed:Z

.field public Vibracion:Z

.field public botones_zoom:Z

.field public changelog_version:Ljava/lang/String;

.field public contadores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public facebook_share_favorites:I

.field public facebook_user_id:Ljava/lang/String;

.field public facebook_user_token:Ljava/lang/String;

.field public fecha_bd:Ljava/util/Date;

.field public fecha_bd_check:Ljava/util/Date;

.field public fecha_bd_net:Ljava/util/Date;

.field public fecha_mapa:Ljava/util/Date;

.field public fecha_mapa_check:Ljava/util/Date;

.field public fecha_mapa_net:Ljava/util/Date;

.field public paraderoWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field sdf:Ljava/text/SimpleDateFormat;

.field public share_last_date:Ljava/util/Date;

.field public twitter_enabled:Z

.field public twitter_name:Ljava/lang/String;

.field public twitter_profilepic:Ljava/lang/String;

.field public twitter_secret:Ljava/lang/String;

.field public twitter_soloespeciales:I

.field public twitter_token:Ljava/lang/String;

.field public twitter_userid:Ljava/lang/String;

.field public twitter_username:Ljava/lang/String;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$Counter()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcl/birdie/params/Preferencias;->$SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$Counter:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->values()[Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->PLANIFICACION:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->SALDO_BIP:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcl/birdie/params/Preferencias;->$SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$Counter:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->twitter_name:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoTarjetaBipURL:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpSaldo:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpFecha:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpError:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpGlosaError:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    .line 50
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpPideRut:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->SaldoBipRut:Ljava/lang/String;

    .line 58
    iput v4, p0, Lcl/birdie/params/Preferencias;->SaldoBipTipoTarjeta:I

    .line 59
    iput v4, p0, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    .line 63
    iput v3, p0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    .line 64
    iput v4, p0, Lcl/birdie/params/Preferencias;->EstiloMapa:I

    .line 68
    iput-boolean v3, p0, Lcl/birdie/params/Preferencias;->UsarGPS:Z

    .line 69
    iput-boolean v3, p0, Lcl/birdie/params/Preferencias;->UsarRed:Z

    .line 71
    iput-boolean v3, p0, Lcl/birdie/params/Preferencias;->CapturarMediaButton:Z

    .line 73
    iput-boolean v3, p0, Lcl/birdie/params/Preferencias;->Vibracion:Z

    .line 75
    iput-boolean v3, p0, Lcl/birdie/params/Preferencias;->AyudaVoz:Z

    .line 76
    iput-boolean v4, p0, Lcl/birdie/params/Preferencias;->NoInstalarVoz:Z

    .line 78
    iput v4, p0, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    .line 82
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    .line 86
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->fecha_bd_net:Ljava/util/Date;

    .line 87
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    .line 89
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->fecha_mapa:Ljava/util/Date;

    .line 90
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->fecha_mapa_net:Ljava/util/Date;

    .line 91
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    .line 93
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->share_last_date:Ljava/util/Date;

    .line 95
    iput-object v2, p0, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    .line 26
    return-void
.end method

.method private leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "valor"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "update":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-object v1

    .line 394
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final getCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;)I
    .locals 5
    .param p1, "cnt"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcl/birdie/params/Preferencias;->$SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$Counter()[I

    move-result-object v2

    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 480
    :goto_0
    iget-object v3, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    monitor-enter v3

    .line 481
    :try_start_0
    iget-object v2, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 474
    :pswitch_0
    const-string v0, "contador_saldo_bip"

    .line 475
    goto :goto_0

    .line 477
    :pswitch_1
    const-string v0, "contador_planificacion"

    goto :goto_0

    .line 481
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 482
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 480
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getWidgetParadero(I)Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWidgetParadero: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 431
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;

    .line 432
    .local v0, "par":Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;
    iget v2, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->widgetId:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public final leer(Landroid/content/SharedPreferences;)V
    .locals 25
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 260
    const-string v9, "twitter_token"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->twitter_token:Ljava/lang/String;

    .line 261
    const-string v9, "twitter_secret"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->twitter_secret:Ljava/lang/String;

    .line 262
    const-string v9, "twitter_username"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->twitter_username:Ljava/lang/String;

    .line 263
    const-string v9, "twitter_name"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->twitter_name:Ljava/lang/String;

    .line 264
    const-string v9, "twitter_userid"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->twitter_userid:Ljava/lang/String;

    .line 265
    const-string v9, "twitter_soloespeciales"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcl/birdie/params/Preferencias;->twitter_soloespeciales:I

    .line 266
    const-string v9, "twitter_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcl/birdie/params/Preferencias;->twitter_enabled:Z

    .line 267
    const-string v9, "twitter_profilepic"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->twitter_profilepic:Ljava/lang/String;

    .line 269
    const-string v9, "SaldoBipURL"

    const-string v22, "http://200.6.67.22/PortalCAE-WAR-MODULE/SesionPortalServlet?NomDominio=aft.cl&NomHost=AFT&NomUsuario=usuInternet&NumDistribuidor=99&NumTarjeta={0}&RutUsuario={3}&Trx=&accion=6&bloqueable=&guid={1}"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;

    .line 270
    const-string v9, "SaldoTarjetaBipURL"

    .line 271
    const-string v22, "http://200.6.67.22/PortalCAE-WAR-MODULE/SesionPortalServlet?accion={0}&NumTarjeta={1}&RutUsuario={2}&NumDistribuidor=99&NomUsuario=usuInternet&NomHost=AFT&NomDominio=aft.cl&Trx=&bloqueable={3}&guid="

    .line 270
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoTarjetaBipURL:Ljava/lang/String;

    .line 272
    const-string v9, "SaldoBipRegexpSaldo"

    .line 273
    const-string v22, "<td [^>]*>Saldo  tarjeta:</td>\\s*<td [^>]*>([^<]*)</td>"

    .line 272
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpSaldo:Ljava/lang/String;

    .line 274
    const-string v9, "SaldoBipRegexpFecha"

    .line 275
    const-string v22, "<td [^>]*>Fecha saldo: </td>\\s*<td [^>]*>([^<]*)</td>"

    .line 274
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpFecha:Ljava/lang/String;

    .line 276
    const-string v9, "SaldoBipRegexpError"

    .line 277
    const-string v22, "<img src=\"imagenes/error.gif\" align=\"absmiddle\">"

    .line 276
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpError:Ljava/lang/String;

    .line 278
    const-string v9, "SaldoBipRegexpGlosa"

    .line 279
    const-string v22, "<span style=\"color:#669933; font-weight:bold ; font-size:12px\">([^<]*)</span>"

    .line 278
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpGlosaError:Ljava/lang/String;

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcl/birdie/params/Preferencias;->revisarParametrosSaldoBip()V

    .line 284
    const-string v9, "SaldoBipUpdate"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    .line 285
    const-string v9, "SaldoBipNumero"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    .line 286
    const-string v9, "SaldoBipRut"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipRut:Ljava/lang/String;

    .line 287
    const-string v9, "SaldoBipTipoTarjeta"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipTipoTarjeta:I

    .line 288
    const-string v9, "SaldoBipValor"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    .line 289
    const-string v9, "SaldoBipFecha"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    .line 291
    const-string v9, "ModoMapa"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    .line 293
    const-string v9, "NumeroEjecuciones"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    .line 295
    const-string v9, "AyudaVoz"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcl/birdie/params/Preferencias;->AyudaVoz:Z

    .line 296
    const-string v9, "NoInstalarVoz"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcl/birdie/params/Preferencias;->NoInstalarVoz:Z

    .line 298
    const-string v9, "facebook_share_favorites"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    .line 300
    const-string v9, "ComplainsJson"

    const-string v22, "[]"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->ComplainsJson:Ljava/lang/String;

    .line 302
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/birdie/params/Preferencias;->ComplainsJson:Ljava/lang/String;

    invoke-static {v9}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler;->procesarListaReclamos(Ljava/lang/String;)I

    .line 304
    const-string v9, "facebook_user_token"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    .line 305
    const-string v9, "facebook_user_id"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    .line 307
    const-string v9, "fecha_bd"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    .line 308
    const-string v9, "fecha_bd_net"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->fecha_bd_net:Ljava/util/Date;

    .line 309
    const-string v9, "fecha_bd_check"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    .line 311
    const-string v9, "fecha_mapa"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->fecha_mapa:Ljava/util/Date;

    .line 312
    const-string v9, "fecha_mapa_net"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->fecha_mapa_net:Ljava/util/Date;

    .line 313
    const-string v9, "fecha_mapa_check"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    .line 315
    const-string v9, "share_last_date"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcl/birdie/params/Preferencias;->leeFecha(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->share_last_date:Ljava/util/Date;

    .line 317
    const-string v9, "changelog_version"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    .line 319
    sget-object v9, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v9, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 320
    :try_start_0
    sget-object v9, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v9, v9, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 321
    const-string v9, "numFavoritos"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 322
    .local v19, "numfavs":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v23, "leer: numFavoritos: "

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    if-lez v19, :cond_0

    .line 324
    const/16 v16, 0x0

    .local v16, "cnt":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 319
    .end local v16    # "cnt":I
    :cond_0
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 352
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 353
    sget-object v9, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->SALDO_BIP:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    const-string v23, "contador_saldo_bip"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Lcl/birdie/params/Preferencias;->setCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;I)V

    .line 354
    sget-object v9, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->PLANIFICACION:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    const-string v23, "contador_planificacion"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Lcl/birdie/params/Preferencias;->setCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;I)V

    .line 351
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    const/16 v16, 0x0

    .line 358
    .restart local v16    # "cnt":I
    const-string v17, "paraderowidget0."

    .line 360
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 362
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "widgetId"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 385
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v22, "widgets leidos: "

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    return-void

    .line 325
    .end local v17    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v23, "favorito"

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 326
    .restart local v17    # "key":Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 327
    .local v18, "line":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v23, "leer: "

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, ": "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 328
    if-eqz v18, :cond_3

    move-object/from16 v9, v18

    :goto_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    if-eqz v18, :cond_2

    .line 330
    const-string v9, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 331
    .local v21, "tokens":[Ljava/lang/String;
    if-eqz v21, :cond_2

    move-object/from16 v0, v21

    array-length v9, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v9, v0, :cond_2

    .line 333
    const/4 v9, 0x0

    :try_start_3
    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 334
    .local v4, "tipofav":I
    const/4 v9, 0x1

    aget-object v5, v21, v9

    .line 335
    .local v5, "nom":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v6, v21, v9

    .line 336
    .local v6, "desc":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 337
    .local v7, "lat":I
    const/4 v9, 0x4

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 338
    .local v8, "lng":I
    new-instance v3, Lcl/birdie/transantiagomaster/newobjetos/Favorito;

    invoke-direct/range {v3 .. v8}, Lcl/birdie/transantiagomaster/newobjetos/Favorito;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 340
    .local v3, "f":Lcl/birdie/transantiagomaster/newobjetos/Favorito;
    sget-object v9, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v9, v9, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    .line 341
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    .end local v3    # "f":Lcl/birdie/transantiagomaster/newobjetos/Favorito;
    .end local v4    # "tipofav":I
    .end local v5    # "nom":Ljava/lang/String;
    .end local v6    # "desc":Ljava/lang/String;
    .end local v7    # "lat":I
    .end local v8    # "lng":I
    .end local v21    # "tokens":[Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 328
    :cond_3
    :try_start_4
    const-string v9, ""

    goto :goto_2

    .line 343
    .restart local v21    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v9

    const-string v9, "Preferencias"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "leer: error en line "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 319
    .end local v16    # "cnt":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "numfavs":I
    .end local v21    # "tokens":[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v22

    throw v9

    .line 351
    .restart local v19    # "numfavs":I
    :catchall_1
    move-exception v9

    monitor-exit v22

    throw v9

    .line 363
    .restart local v16    # "cnt":I
    .restart local v17    # "key":Ljava/lang/String;
    :cond_4
    new-instance v20, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;

    invoke-direct/range {v20 .. v20}, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;-><init>()V

    .line 365
    .local v20, "pw":Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "widgetId"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v20

    iput v9, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->widgetId:I

    .line 366
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "horaDesde"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v20

    iput v9, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaDesde:I

    .line 367
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "minDesde"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v20

    iput v9, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minDesde:I

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "horaHasta"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v20

    iput v9, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaHasta:I

    .line 369
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "minHasta"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v20

    iput v9, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minHasta:I

    .line 371
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "par.codigo"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "codigo":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "par.texto"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 373
    .local v15, "texto":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "par.lat"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v9

    float-to-double v10, v9

    .line 374
    .local v10, "lat":D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "par.lng"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v9

    float-to-double v12, v9

    .line 376
    .local v12, "lng":D
    new-instance v9, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct/range {v9 .. v15}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    iput-object v9, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 378
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v16, v16, 0x1

    .line 382
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v22, "paraderowidget"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v22, "."

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1
.end method

.method public final leerNuevo(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 402
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 405
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "BotonesZoom"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcl/birdie/params/Preferencias;->botones_zoom:Z

    .line 406
    const-string v2, "Vibracion"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcl/birdie/params/Preferencias;->Vibracion:Z

    .line 408
    const-string v2, "UsarGPS"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcl/birdie/params/Preferencias;->UsarGPS:Z

    .line 410
    const-string v2, "UsarRed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcl/birdie/params/Preferencias;->UsarRed:Z

    .line 412
    const-string v2, "CapturarMediaButton"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcl/birdie/params/Preferencias;->CapturarMediaButton:Z

    .line 413
    const-string v2, "MapaEstilo"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "xEstiloMapa":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MapaEstilo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 416
    :cond_0
    iput v4, p0, Lcl/birdie/params/Preferencias;->EstiloMapa:I

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcl/birdie/params/Preferencias;->EstiloMapa:I

    goto :goto_0
.end method

.method public final persistir(Landroid/content/SharedPreferences;)V
    .locals 13
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 107
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "twitter_token"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->twitter_token:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v8, "twitter_secret"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->twitter_secret:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v8, "twitter_username"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->twitter_username:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v8, "twitter_name"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->twitter_name:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v8, "twitter_userid"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->twitter_userid:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v8, "twitter_soloespeciales"

    iget v11, p0, Lcl/birdie/params/Preferencias;->twitter_soloespeciales:I

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v8, "twitter_enabled"

    iget-boolean v11, p0, Lcl/birdie/params/Preferencias;->twitter_enabled:Z

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v8, "twitter_profilepic"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->twitter_profilepic:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v8, "SaldoBipURL"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v8, "SaldoBipRegexpSaldo"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpSaldo:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v8, "SaldoBipRegexpFecha"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpFecha:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v8, "SaldoBipRegexpError"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpError:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v8, "SaldoBipRegexpGlosaError"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpGlosaError:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v11, "SaldoBipUpdate"

    .line 122
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    if-nez v8, :cond_0

    move-object v8, v9

    .line 121
    :goto_0
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v8, "SaldoBipNumero"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v8, "SaldoBipRut"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipRut:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v8, "SaldoBipTipoTarjeta"

    iget v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipTipoTarjeta:I

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v8, "SaldoBipValor"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v8, "SaldoBipFecha"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string v8, "ModoMapa"

    iget v11, p0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v8, "NumeroEjecuciones"

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v8, "AyudaVoz"

    iget-boolean v11, p0, Lcl/birdie/params/Preferencias;->AyudaVoz:Z

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v8, "NoInstalarVoz"

    iget-boolean v11, p0, Lcl/birdie/params/Preferencias;->NoInstalarVoz:Z

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v8, "facebook_share_favorites"

    iget v11, p0, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    const-string v8, "ComplainsJson"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->ComplainsJson:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string v8, "facebook_user_token"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string v8, "facebook_user_id"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v11, "fecha_bd"

    .line 149
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    if-nez v8, :cond_1

    move-object v8, v9

    .line 148
    :goto_1
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    const-string v11, "fecha_bd_net"

    .line 151
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->fecha_bd_net:Ljava/util/Date;

    if-nez v8, :cond_2

    move-object v8, v9

    .line 150
    :goto_2
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v11, "fecha_bd_check"

    .line 153
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    if-nez v8, :cond_3

    move-object v8, v9

    .line 152
    :goto_3
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v11, "fecha_mapa"

    .line 156
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->fecha_mapa:Ljava/util/Date;

    if-nez v8, :cond_4

    move-object v8, v9

    .line 155
    :goto_4
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v11, "fecha_mapa_net"

    .line 158
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->fecha_mapa_net:Ljava/util/Date;

    if-nez v8, :cond_5

    move-object v8, v9

    .line 157
    :goto_5
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    const-string v11, "fecha_mapa_check"

    iget-object v8, p0, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    if-nez v8, :cond_6

    move-object v8, v9

    :goto_6
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v8, "share_last_date"

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->share_last_date:Ljava/util/Date;

    if-nez v11, :cond_7

    :goto_7
    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v8, "changelog_version"

    iget-object v9, p0, Lcl/birdie/params/Preferencias;->changelog_version:Ljava/lang/String;

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v9, v8, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    monitor-enter v9

    .line 168
    :try_start_0
    const-string v8, "numFavoritos"

    .line 169
    sget-object v11, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v11, v11, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 168
    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "persistir: numFavoritos: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    sget-object v11, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v11, v11, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    .line 173
    .local v0, "cnt":I
    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v8, v8, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 167
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v9, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    monitor-enter v9

    .line 192
    :try_start_1
    const-string v8, "contador_saldo_bip"

    sget-object v10, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->SALDO_BIP:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    invoke-virtual {p0, v10}, Lcl/birdie/params/Preferencias;->getCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;)I

    move-result v10

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v8, "contador_planificacion"

    sget-object v10, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->PLANIFICACION:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    invoke-virtual {p0, v10}, Lcl/birdie/params/Preferencias;->getCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;)I

    move-result v10

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    const/4 v0, 0x0

    .line 197
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_b

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "widgets guardados: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    return-void

    .line 122
    .end local v0    # "cnt":I
    :cond_0
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 149
    :cond_1
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 151
    :cond_2
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcl/birdie/params/Preferencias;->fecha_bd_net:Ljava/util/Date;

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 153
    :cond_3
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 156
    :cond_4
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcl/birdie/params/Preferencias;->fecha_mapa:Ljava/util/Date;

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 158
    :cond_5
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcl/birdie/params/Preferencias;->fecha_mapa_net:Ljava/util/Date;

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 160
    :cond_6
    iget-object v8, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 163
    :cond_7
    iget-object v9, p0, Lcl/birdie/params/Preferencias;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v11, p0, Lcl/birdie/params/Preferencias;->share_last_date:Ljava/util/Date;

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 173
    .restart local v0    # "cnt":I
    :cond_8
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 174
    .local v2, "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "favorito"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v11

    .line 176
    invoke-virtual {v11}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    .line 177
    .local v4, "lat":I
    :goto_a
    invoke-interface {v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-interface {v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v11

    .line 178
    invoke-virtual {v11}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    .line 179
    .local v5, "lng":I
    :goto_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v12

    invoke-virtual {v12}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 180
    invoke-interface {v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 181
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 179
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "value":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "persistir: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .end local v4    # "lat":I
    .end local v5    # "lng":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_9
    move v4, v10

    .line 176
    goto :goto_a

    .restart local v4    # "lat":I
    :cond_a
    move v5, v10

    .line 178
    goto :goto_b

    .line 167
    .end local v0    # "cnt":I
    .end local v2    # "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "lat":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 188
    .restart local v0    # "cnt":I
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    .line 197
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;

    .line 198
    .local v6, "par":Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "paraderowidget"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .restart local v3    # "key":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "widgetId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->widgetId:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "horaDesde"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaDesde:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "minDesde"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minDesde:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "horaHasta"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaHasta:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "minHasta"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minHasta:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "par.codigo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "par.texto"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "par.lat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v10, v10, Lcl/birdie/toolkit/CacheableLatLng;->lat:D

    double-to-float v10, v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "par.lng"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v10, v10, Lcl/birdie/toolkit/CacheableLatLng;->lng:D

    double-to-float v10, v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9
.end method

.method public final revisarParametrosSaldoBip()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "http://200.6.67.22/PortalCAE-WAR-MODULE/SesionPortalServlet?NomDominio=aft.cl&NomHost=AFT&NomUsuario=usuInternet&NumDistribuidor=99&NumTarjeta={0}&RutUsuario={3}&Trx=&accion=6&bloqueable=&guid={1}"

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;

    .line 230
    :cond_0
    iget-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoTarjetaBipURL:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string v0, "http://200.6.67.22/PortalCAE-WAR-MODULE/SesionPortalServlet?accion={0}&NumTarjeta={1}&RutUsuario={2}&NumDistribuidor=99&NomUsuario=usuInternet&NomHost=AFT&NomDominio=aft.cl&Trx=&bloqueable={3}&guid="

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoTarjetaBipURL:Ljava/lang/String;

    .line 234
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpSaldo:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpFecha:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpError:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpGlosaError:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    :goto_3
    return-void

    .line 236
    :catch_0
    move-exception v0

    const-string v0, "<td [^>]*>Saldo  tarjeta:</td>\\s*<td [^>]*>([^<]*)</td>"

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpSaldo:Ljava/lang/String;

    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    const-string v0, "<td [^>]*>Fecha saldo: </td>\\s*<td [^>]*>([^<]*)</td>"

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpFecha:Ljava/lang/String;

    goto :goto_1

    .line 246
    :catch_2
    move-exception v0

    const-string v0, "<img src=\"imagenes/error.gif\" align=\"absmiddle\">"

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpError:Ljava/lang/String;

    goto :goto_2

    .line 251
    :catch_3
    move-exception v0

    const-string v0, "<span style=\"color:#669933; font-weight:bold ; font-size:12px\">([^<]*)</span>"

    iput-object v0, p0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpGlosaError:Ljava/lang/String;

    goto :goto_3
.end method

.method public final setCounter(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;I)V
    .locals 6
    .param p1, "cnt"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;
    .param p2, "valor"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcl/birdie/params/Preferencias;->$SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$Counter()[I

    move-result-object v2

    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 459
    :goto_0
    iget-object v3, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    monitor-enter v3

    .line 460
    :try_start_0
    iget-object v2, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    :goto_1
    iget-object v2, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 453
    :pswitch_0
    const-string v0, "contador_saldo_bip"

    .line 454
    goto :goto_0

    .line 456
    :pswitch_1
    const-string v0, "contador_planificacion"

    goto :goto_0

    .line 460
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 461
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcl/birdie/params/Preferencias;->contadores:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 459
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
