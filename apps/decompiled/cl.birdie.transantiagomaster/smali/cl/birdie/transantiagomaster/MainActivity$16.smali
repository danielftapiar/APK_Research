.class final Lcl/birdie/transantiagomaster/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onGetWallPosts(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$16;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$16;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1377
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$16;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1378
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1280
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    .line 1282
    .local v3, "posts":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/PostModel;>;"
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    monitor-enter v6

    .line 1283
    :try_start_0
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1284
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1282
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    monitor-enter v6

    .line 1291
    const/4 v0, 0x0

    .line 1294
    .local v0, "done":Z
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1320
    if-eqz v0, :cond_1

    .line 1321
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v7, v5, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1322
    :try_start_2
    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$16;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 1323
    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v8, v8, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    .line 1324
    invoke-virtual {v8}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v8

    new-instance v9, Lcl/birdie/transantiagomaster/MainActivity$16$1;

    iget-object v10, p0, Lcl/birdie/transantiagomaster/MainActivity$16;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-direct {v9, p0, v10}, Lcl/birdie/transantiagomaster/MainActivity$16$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$16;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1322
    invoke-virtual {v5, v8, v9}, Lcl/birdie/transantiagomaster/MainActivity;->onGetUrlProfilePictureUI(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1321
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1290
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1372
    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$16;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v5, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1373
    return-void

    .line 1284
    .end local v0    # "done":Z
    :cond_2
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .line 1285
    .local v2, "p":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1282
    .end local v2    # "p":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1294
    .restart local v0    # "done":Z
    :cond_3
    :try_start_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .line 1296
    .local v1, "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    iget-object v7, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1298
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    .line 1299
    iget-object v8, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v8, v8, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1301
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "RefrescarPosts: a\u00f1adiendo id "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1302
    iget-object v8, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v8, v8, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1301
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    .line 1304
    iget-object v8, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v8, v8, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v9, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const/4 v0, 0x1

    .line 1306
    goto :goto_1

    .line 1307
    :cond_4
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    .line 1308
    iget-object v8, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v8, v8, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    .line 1309
    .local v4, "u":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    if-nez v4, :cond_5

    .line 1310
    const-string v7, "MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UsuariosSinImagenes: key "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1311
    iget-object v9, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v9, v9, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " NULL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1310
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 1290
    .end local v1    # "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    .end local v4    # "u":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1312
    .restart local v1    # "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    .restart local v4    # "u":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :cond_5
    :try_start_6
    iget-object v7, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1313
    iget-object v7, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v8, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    iput-object v8, v7, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    goto/16 :goto_1

    .line 1321
    .end local v1    # "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    .end local v4    # "u":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :catchall_2
    move-exception v5

    monitor-exit v7

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method
