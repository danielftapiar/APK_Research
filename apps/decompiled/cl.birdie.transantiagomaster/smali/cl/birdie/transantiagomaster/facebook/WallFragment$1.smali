.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$1;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment;
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
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/facebook/WallFragment$1;)Lcl/birdie/transantiagomaster/facebook/WallFragment;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

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
    .line 197
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v1, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onDisplayComment(Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    new-instance v2, Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;

    invoke-direct {v2, p0, p3}, Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$1;I)V

    invoke-interface {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_0
.end method
