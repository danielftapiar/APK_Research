.class final Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->revisarBaseDatos(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 340
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 313
    :try_start_0
    move-object v0, p1

    check-cast v0, [B

    move-object v1, v0

    .line 314
    .local v1, "bytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 315
    .local v3, "fecha":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 316
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 317
    .local v4, "l":Ljava/util/Date;
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :try_start_1
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    iput-object v8, v6, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    .line 319
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v4, v6, Lcl/birdie/params/Preferencias;->fecha_bd_net:Ljava/util/Date;

    .line 320
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "fecha desde la red:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v6, v6, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    if-eqz v6, :cond_0

    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v6, v6, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    invoke-virtual {v6, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    :cond_0
    const-string v6, "DatabaseHandler"

    const-string v8, "es necesario actualizar!"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v6, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 325
    monitor-exit v7

    .line 336
    .end local v1    # "bytes":[B
    .end local v3    # "fecha":Ljava/lang/String;
    .end local v4    # "l":Ljava/util/Date;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 327
    .restart local v1    # "bytes":[B
    .restart local v3    # "fecha":Ljava/lang/String;
    .restart local v4    # "l":Ljava/util/Date;
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v6, "DatabaseHandler"

    const-string v8, "no es necesario actualizar"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v6, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v6, v4}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 329
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    .end local v1    # "bytes":[B
    .end local v3    # "fecha":Ljava/lang/String;
    .end local v4    # "l":Ljava/util/Date;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "DatabaseHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "excepci\u00f3n en revisarBaseDatos: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v6, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v6, v9}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
