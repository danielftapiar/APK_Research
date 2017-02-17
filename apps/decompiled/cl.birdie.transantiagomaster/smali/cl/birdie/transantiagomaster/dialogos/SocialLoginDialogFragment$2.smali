.class final Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$2;
.super Ljava/lang/Object;
.source "SocialLoginDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->dismiss()V

    .line 114
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$2(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$2(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method
