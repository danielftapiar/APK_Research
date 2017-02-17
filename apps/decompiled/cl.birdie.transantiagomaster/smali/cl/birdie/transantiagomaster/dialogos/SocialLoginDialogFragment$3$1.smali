.class final Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;
.super Ljava/lang/Object;
.source "SocialLoginDialogFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 157
    const-string v0, "SocialLoginDialogFragment"

    const-string v1, "onError: twitter login."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onDismissTwitterLogin()V

    .line 160
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$2(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$2(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 145
    const-string v0, "SocialLoginDialogFragment"

    const-string v1, "onSuccess: twitter login!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->type:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->type:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_TWITTER:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    if-ne v0, v1, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onDismissTwitterLogin()V

    .line 150
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$2(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    move-result-object v0

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$2(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 153
    :cond_1
    return-void
.end method
