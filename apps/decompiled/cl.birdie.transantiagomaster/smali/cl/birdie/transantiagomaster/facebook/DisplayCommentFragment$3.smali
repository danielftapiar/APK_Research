.class final Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$3;
.super Ljava/lang/Object;
.source "DisplayCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    const-string v3, "CommentClickListener: onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    if-eqz v2, :cond_0

    .line 371
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Link:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 372
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Link:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 376
    .local v0, "abrir":Landroid/content/Intent;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    invoke-virtual {v2, v0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->startActivity(Landroid/content/Intent;)V

    .line 378
    .end local v0    # "abrir":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
