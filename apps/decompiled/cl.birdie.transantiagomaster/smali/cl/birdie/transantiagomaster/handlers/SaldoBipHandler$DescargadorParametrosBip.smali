.class final Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler$DescargadorParametrosBip;
.super Landroid/os/AsyncTask;
.source "SaldoBipHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorParametrosBip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler$DescargadorParametrosBip;->this$0:Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler$DescargadorParametrosBip;-><init>(Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;)V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1
    check-cast p1, [B

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcl/birdie/params/Preferencias;->SaldoBipUpdate:Ljava/util/Date;

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v0}, Lcl/birdie/params/Preferencias;->revisarParametrosSaldoBip()V

    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v2, v3, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v2, v3, Lcl/birdie/params/Preferencias;->SaldoBipRegexpSaldo:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v2, v3, Lcl/birdie/params/Preferencias;->SaldoBipRegexpFecha:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v2, v3, Lcl/birdie/params/Preferencias;->SaldoBipRegexpError:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v2, v3, Lcl/birdie/params/Preferencias;->SaldoBipRegexpGlosaError:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
