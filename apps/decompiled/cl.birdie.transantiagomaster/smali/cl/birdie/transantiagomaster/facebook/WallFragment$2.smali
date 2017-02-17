.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$2;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/facebook/WallFragment$2;)Lcl/birdie/transantiagomaster/facebook/WallFragment;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "comentario":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 229
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    const v3, 0x7f060118

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    .line 277
    :cond_1
    :goto_1
    return-void

    .line 226
    .end local v0    # "comentario":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    .restart local v0    # "comentario":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    new-instance v3, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$1;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$2;)V

    invoke-interface {v1, v0, v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onCreatePost(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_1

    .line 252
    :cond_4
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v2, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    new-instance v3, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;

    invoke-direct {v3, p0, v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$2;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_1
.end method
