.class final Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$7;
.super Ljava/lang/Object;
.source "DisplayCommentFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->procesarPost(Lcl/birdie/transantiagomaster/facebook/models/PostModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$7;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 281
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 264
    move-object v1, p1

    check-cast v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;

    .line 266
    .local v1, "uu":Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v3, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 267
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v3, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    iput-object v3, v2, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    .line 269
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 275
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$7;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v3, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    iget-object v4, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->redibujarImagenes(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 269
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    .line 270
    .local v0, "c":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    iget-object v3, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v4, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AsyncImageLoadFromUser: seteando profilepicture a usuario "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    iget-object v3, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v1, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    iput-object v4, v3, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    goto :goto_0
.end method
