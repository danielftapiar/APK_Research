.class final Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/SocialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/SocialFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;)Lcl/birdie/transantiagomaster/facebook/SocialFragment;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    return-object v0
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "SocialFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Social Fragment: onItemClick() whit position: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataImages:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    iget-object v1, v0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataImages:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onImageSelected(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    new-instance v2, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1$1;

    invoke-direct {v2, p0, p3}, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1$1;-><init>(Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;I)V

    invoke-interface {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_0
.end method
