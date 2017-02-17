.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;
.super Ljava/lang/Object;
.source "ComplainDialogFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

.field private final synthetic val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f060152

    .line 556
    if-eqz p1, :cond_3

    .line 557
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 558
    check-cast v0, Ljava/lang/String;

    .line 559
    .local v0, "s":Ljava/lang/String;
    const-string v1, "foto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v2, 0x7f060153

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    .line 572
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowComplainDialog(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V

    .line 574
    :cond_1
    return-void

    .line 562
    .restart local v0    # "s":Ljava/lang/String;
    :cond_2
    const-string v1, "complaint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_0

    .line 569
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 550
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v1, 0x7f060151

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    .line 552
    :cond_0
    return-void
.end method
