.class final Lcl/birdie/transantiagomaster/MainActivity$16$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity$16;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/MainActivity$16;

.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity$16;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$16$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$16;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$16$1;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1366
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1327
    move-object v2, p1

    check-cast v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;

    .line 1328
    .local v2, "uu":Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;
    const/4 v0, 0x0

    .line 1330
    .local v0, "done":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AsyncImageLoadFromUser: id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1332
    iget-object v4, v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1333
    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1334
    iget-object v4, v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1330
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    monitor-enter v4

    .line 1336
    :try_start_0
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1335
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    monitor-enter v4

    .line 1349
    :try_start_1
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    .line 1350
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1349
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1348
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1359
    if-eqz v0, :cond_2

    .line 1360
    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$16$1;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1361
    :cond_2
    return-void

    .line 1336
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .line 1337
    .local v1, "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v6, v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1338
    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1339
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AsyncImageLoadFromUser: seteando profilepicture a usuario "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1341
    iget-object v6, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1340
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1339
    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v6, v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    iput-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1343
    const/4 v0, 0x1

    goto :goto_0

    .line 1335
    .end local v1    # "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1350
    :cond_4
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    .line 1351
    .local v1, "m":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v6, v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1352
    iget-object v3, v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    iput-object v3, v1, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1353
    const/4 v0, 0x1

    .line 1354
    goto :goto_1

    .line 1348
    .end local v1    # "m":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method
