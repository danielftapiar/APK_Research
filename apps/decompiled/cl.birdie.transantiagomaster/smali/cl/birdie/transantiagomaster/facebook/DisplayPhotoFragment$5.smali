.class final Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$5;
.super Ljava/lang/Object;
.source "DisplayPhotoFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->procesarImageModel(Lcl/birdie/transantiagomaster/facebook/models/ImageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$5;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 254
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 237
    move-object v1, p1

    check-cast v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;

    .line 239
    .local v1, "uu":Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v3, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    monitor-enter v3

    .line 240
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$5;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v3, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    iget-object v4, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->redibujarImagenes(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 240
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .line 241
    .local v0, "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    iget-object v4, v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AsyncImageLoadFromUser: seteando profilepicture a usuario "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    iget-object v4, v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    iput-object v5, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    .end local v0    # "m":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
