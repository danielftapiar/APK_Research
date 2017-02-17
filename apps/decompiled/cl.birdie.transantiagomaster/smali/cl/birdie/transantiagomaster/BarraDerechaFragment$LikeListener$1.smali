.class final Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;
.super Ljava/lang/Object;
.source "BarraDerechaFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->val$v:Landroid/view/View;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 175
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    const-string v0, "BarraDerechaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR en like a post "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 166
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    const-string v0, "BarraDerechaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exito en like a post "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;)Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    move-result-object v0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->refreshLikeCount(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;)Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;->this$1:Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;)Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const v1, 0x7f060133

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    .line 171
    :cond_0
    return-void
.end method
