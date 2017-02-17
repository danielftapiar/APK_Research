.class final Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->txtForComment:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->idPost:Ljava/lang/String;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->txtForComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1$1;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onCreateComment(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 118
    :cond_0
    return-void
.end method
