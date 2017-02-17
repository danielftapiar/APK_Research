.class final Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onDismissSocialLogin()V

    .line 141
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)V

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRequestTwitterLogin(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 166
    :cond_0
    return-void
.end method
