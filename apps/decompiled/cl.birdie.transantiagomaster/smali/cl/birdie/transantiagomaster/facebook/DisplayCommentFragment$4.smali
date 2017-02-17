.class final Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$4;
.super Ljava/lang/Object;
.source "DisplayCommentFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 155
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v1, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void

    .line 156
    :cond_1
    const-string v0, "NULL error onGetPost"

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 150
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    check-cast p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->procesarPost(Lcl/birdie/transantiagomaster/facebook/models/PostModel;)V

    .line 151
    return-void
.end method
