.class public final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;,
        Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;,
        Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$RequestTask;,
        Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;
    }
.end annotation


# static fields
.field private static IdTM:Ljava/lang/String;

.field public static PUBLISH_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static STR_COMMENT_CREATED:Ljava/lang/String;

.field private static STR_LIKE_POST:Ljava/lang/String;

.field static TAG:Ljava/lang/String;

.field public static requestingMe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v0, "FacebookConectActions"

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->PUBLISH_PERMISSIONS:Ljava/util/List;

    .line 57
    const-string v0, "251718274910576"

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IdTM:Ljava/lang/String;

    .line 492
    sput-boolean v3, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->requestingMe:Z

    .line 843
    return-void
.end method

.method public static CerrarSesion()Z
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 95
    .local v0, "session":Lcom/facebook/Session;
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->clearMe()V

    .line 96
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->clearToken()V

    .line 98
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 101
    const/4 v1, 0x1

    .line 103
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateComment(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "textComment"    # Ljava/lang/String;
    .param p2, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 861
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$12;

    invoke-direct {v5, p2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$12;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 894
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 895
    .local v3, "params":Landroid/os/Bundle;
    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/comments"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 897
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 898
    return-void
.end method

.method public static CreateFeedToTM(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "textToFeed"    # Ljava/lang/String;
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1029
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$14;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$14;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1074
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1075
    .local v3, "b":Landroid/os/Bundle;
    const-string v0, "message"

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 1077
    .local v1, "s":Lcom/facebook/Session;
    :goto_0
    new-instance v0, Lcom/facebook/Request;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IdTM:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/feed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 1078
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 1079
    return-void

    .line 1076
    .end local v1    # "s":Lcom/facebook/Session;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Favorite(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v6, 0x0

    .line 531
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;

    invoke-direct {v5, p2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$7;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 567
    .local v5, "callback":Lcom/facebook/Request$Callback;
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Favorite: execute con "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v3, "postParams":Landroid/os/Bundle;
    invoke-virtual {v3, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "/me/transantiagomaster:favorite"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 571
    .local v0, "request":Lcom/facebook/Request;
    new-instance v1, Lcom/facebook/RequestAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    aput-object v0, v2, v6

    invoke-direct {v1, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 572
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 573
    return-void
.end method

.method public static GetPhotoFromId(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 657
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$8;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$8;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 697
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 698
    .local v3, "b":Landroid/os/Bundle;
    const-string v0, "fields"

    const-string v1, "id,name,source,from,comments.fields(like_count,message,from),likes"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 700
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 701
    return-void
.end method

.method public static GetPhotosAlbum(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 7
    .param p0, "ifbcallback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v6, 0x0

    .line 647
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v3, "b":Landroid/os/Bundle;
    const-string v2, "field"

    const-string v4, "id,source,name"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 650
    .local v1, "s":Lcom/facebook/Session;
    :goto_0
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "400020420080360/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;

    invoke-direct {v5, p0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$DescargarFotosAlbumCallback;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 651
    .local v0, "request":Lcom/facebook/Request;
    new-instance v2, Lcom/facebook/RequestAsyncTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/Request;

    aput-object v0, v4, v6

    invoke-direct {v2, v4}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 652
    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 653
    return-void

    .line 649
    .end local v0    # "request":Lcom/facebook/Request;
    .end local v1    # "s":Lcom/facebook/Session;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static GetPostFromId(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 980
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$13;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1021
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1022
    .local v3, "b":Landroid/os/Bundle;
    const-string v0, "fields"

    const-string v1, "id,name,source,link,comments.fields(like_count,message,from),from,picture,message,likes,caption,type,object_id"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 1024
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 1025
    return-void
.end method

.method public static GetPostsTMFromPHPSocial(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 3
    .param p0, "origen"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v2, 0x0

    .line 973
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v1, "GetPostsTMFromPHPSocial()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$RequestTask;

    invoke-direct {v0, v2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$RequestTask;-><init>(B)V

    .line 975
    const/4 v1, 0x1

    new-array v1, v1, [Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$RequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 976
    return-void
.end method

.method public static GetUrlProfilePictureForUsers(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 14
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;
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
    .line 1242
    .local p0, "users":Ljava/util/Collection;, "Ljava/util/Collection<Lcl/birdie/transantiagomaster/facebook/models/UserModel;>;"
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$17;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$17;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1288
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1289
    .local v3, "params":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "id,picture"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1291
    new-instance v12, Lcom/facebook/RequestBatch;

    invoke-direct {v12}, Lcom/facebook/RequestBatch;-><init>()V

    .line 1292
    .local v12, "batch":Lcom/facebook/RequestBatch;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1301
    invoke-virtual {v12}, Lcom/facebook/RequestBatch;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1314
    .end local v12    # "batch":Lcom/facebook/RequestBatch;
    :cond_1
    :goto_1
    return-void

    .line 1292
    .restart local v12    # "batch":Lcom/facebook/RequestBatch;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    .line 1293
    .local v13, "u":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    iget-object v1, v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1294
    :cond_3
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    iget-object v2, v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 1298
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v12, v0}, Lcom/facebook/RequestBatch;->add(Lcom/facebook/Request;)Z

    goto :goto_0

    .line 1304
    .end local v0    # "request":Lcom/facebook/Request;
    .end local v13    # "u":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :cond_4
    invoke-virtual {v12}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_1

    .line 1306
    .end local v12    # "batch":Lcom/facebook/RequestBatch;
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    .line 1307
    .restart local v13    # "u":Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    iget-object v2, v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 1308
    :cond_7
    new-instance v6, Lcom/facebook/Request;

    const/4 v7, 0x0

    iget-object v8, v13, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    sget-object v10, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v9, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 1311
    invoke-virtual {v6}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_2
.end method

.method public static IsSessionOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 72
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v2, "session != null and true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 80
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v3, "session != null and false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v3, "session == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static LikePost(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 705
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": LikePost()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$9;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$9;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 740
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/likes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 741
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 742
    return-void
.end method

.method public static Login(Landroid/app/Activity;Landroid/os/Bundle;Lcom/facebook/Session$StatusCallback;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "statusCallback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 216
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 217
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_2

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const/4 v1, 0x0

    invoke-static {p0, v1, p2, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v0

    .line 221
    :cond_0
    if-nez v0, :cond_1

    .line 222
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "session":Lcom/facebook/Session;
    invoke-direct {v0, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 224
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 225
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 229
    :cond_2
    return-void
.end method

.method public static PhotoLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "origen"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 787
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": PhotoLikeCount()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$11;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 834
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select like_info from photo where object_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 835
    .local v6, "fqlQuery":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v3, "params":Landroid/os/Bundle;
    const-string v1, "q"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "/fql"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .local v0, "request":Lcom/facebook/Request;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    .line 838
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 839
    return-void
.end method

.method public static PostLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 746
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$10;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$10;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 781
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 782
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 783
    return-void
.end method

.method public static PublicarFoto(Ljava/lang/String;[BLcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 9
    .param p0, "textPhoto"    # Ljava/lang/String;
    .param p1, "contenidoBytes"    # [B
    .param p2, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v8, 0x0

    .line 233
    new-instance v6, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$1;

    invoke-direct {v6, p2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$1;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 281
    .local v6, "callback1":Lcom/facebook/Request$Callback;
    new-instance v7, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;

    invoke-direct {v7, p2, p0, v6}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$2;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    .line 339
    .local v7, "callback2":Lcom/facebook/Request$Callback;
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$3;

    invoke-direct {v5, p2, v7}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$3;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Lcom/facebook/Request$Callback;)V

    .line 387
    .local v5, "callback":Lcom/facebook/Request$Callback;
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v2, "PublicarFoto"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v3, "postParams":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "source"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 391
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "/me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 392
    .local v0, "request":Lcom/facebook/Request;
    new-instance v1, Lcom/facebook/RequestAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    aput-object v0, v2, v8

    invoke-direct {v1, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 393
    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method public static SubirFoto(Ljava/lang/String;[BLcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 7
    .param p0, "textPhoto"    # Ljava/lang/String;
    .param p1, "contenidoBytes"    # [B
    .param p2, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 398
    new-instance v6, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$4;

    invoke-direct {v6, p2}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$4;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 434
    .local v6, "callback2":Lcom/facebook/Request$Callback;
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$5;

    invoke-direct {v5, p2, v6}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$5;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Lcom/facebook/Request$Callback;)V

    .line 481
    .local v5, "callback":Lcom/facebook/Request$Callback;
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubirFoto: largo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v3, "postParams":Landroid/os/Bundle;
    const-string v0, "message"

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v0, "source"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 485
    const-string v0, "no_story"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "/me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 487
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 490
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IdTM:Ljava/lang/String;

    return-object v0
.end method

.method public static addCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 1
    .param p0, "statusCallback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1442
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1443
    return-void
.end method

.method public static clearMe()V
    .locals 3

    .prologue
    .line 1450
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 1451
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v1

    .line 1452
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v2, 0x0

    iput-object v2, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    .line 1453
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 1451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->requestingMe:Z

    .line 1456
    return-void

    .line 1451
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearToken()V
    .locals 3

    .prologue
    .line 1497
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v1, "clearToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v1

    .line 1499
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v2, 0x0

    iput-object v2, v0, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    .line 1500
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 1498
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMe(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 4
    .param p0, "listener"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 495
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$6;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$6;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 511
    .local v0, "callback":Lcom/facebook/Request$GraphUserCallback;
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 528
    :goto_0
    return-void

    .line 516
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 518
    sget-boolean v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->requestingMe:Z

    if-eqz v2, :cond_1

    .line 519
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 524
    .local v1, "sess":Lcom/facebook/Session;
    if-nez v1, :cond_2

    .line 525
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v3, "getMe: session null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    invoke-static {v1, v0}, Lcom/facebook/Request;->executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;

    .line 527
    const/4 v2, 0x1

    sput-boolean v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->requestingMe:Z

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1418
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v1

    .line 1419
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1424
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 1425
    .local v0, "sess":Lcom/facebook/Session;
    const/4 v1, 0x0

    .line 1426
    .local v1, "token":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1427
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 1428
    :cond_0
    if-nez v1, :cond_1

    .line 1429
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v3

    .line 1430
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v2, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    .line 1429
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    :cond_1
    return-object v1

    .line 1429
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static guardarSesion(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1317
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 1318
    return-void
.end method

.method public static hasUserId()Z
    .locals 2

    .prologue
    .line 1488
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v1

    .line 1489
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1490
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1491
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1493
    :goto_0
    return v0

    .line 1488
    :cond_1
    monitor-exit v1

    .line 1493
    const/4 v0, 0x1

    goto :goto_0

    .line 1488
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static inicializar(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 64
    const v0, 0x7f060133

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->STR_LIKE_POST:Ljava/lang/String;

    .line 65
    const v0, 0x7f060134

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->STR_COMMENT_CREATED:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static removeCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 1
    .param p0, "statusCallback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1446
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1447
    return-void
.end method

.method public static saveSession(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1437
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 1438
    invoke-static {v0, p0}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 1439
    return-void
.end method

.method public static saveToken(Lcom/facebook/Session;)V
    .locals 5
    .param p0, "session"    # Lcom/facebook/Session;

    .prologue
    .line 1459
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 1460
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v2

    .line 1461
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, "token":Ljava/lang/String;
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1463
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1464
    :cond_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v0, v1, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    .line 1465
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveToken: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v4, v4, Lcl/birdie/params/Preferencias;->facebook_user_token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 1460
    :goto_0
    monitor-exit v2

    return-void

    .line 1468
    :cond_1
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v3, "saveToken: descartando"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1460
    .end local v0    # "token":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static saveUserId(Ljava/lang/String;)V
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1474
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 1475
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v1

    .line 1476
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1477
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1478
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object p0, v0, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    .line 1479
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveUserId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v3, v3, Lcl/birdie/params/Preferencias;->facebook_user_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 1475
    :goto_0
    monitor-exit v1

    return-void

    .line 1482
    :cond_1
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v2, "saveUserId: descartando"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sendRequestDialog(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1506
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "message"

    const v2, 0x7f060195

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    new-instance v1, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    .line 1510
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 1508
    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 1512
    new-instance v2, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$18;

    invoke-direct {v2, p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$18;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-virtual {v1, v2}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    .line 1545
    invoke-virtual {v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v1

    .line 1508
    invoke-virtual {v1}, Lcom/facebook/widget/WebDialog;->show()V

    .line 1547
    return-void
.end method
