.class final Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;
.super Ljava/lang/Object;
.source "SocialLoginDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->checkTwitterStatus(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRequestTwitterLogout()V

    .line 179
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    # invokes: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->checkTwitterStatus(Landroid/view/ViewGroup;)V
    invoke-static {v1, v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$4(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;Landroid/view/ViewGroup;)V

    .line 180
    return-void
.end method
