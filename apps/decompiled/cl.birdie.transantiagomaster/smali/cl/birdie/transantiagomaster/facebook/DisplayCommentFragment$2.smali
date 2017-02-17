.class final Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "LikeClickListener: onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2$1;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2$1;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;)V

    invoke-interface {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onLike(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 361
    :cond_0
    return-void
.end method
