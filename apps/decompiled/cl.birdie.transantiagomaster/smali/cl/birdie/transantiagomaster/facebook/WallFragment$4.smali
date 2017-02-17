.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$4;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 359
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/WallFragment$4$1;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$4$1;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$4;)V

    .line 376
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    .line 362
    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSelectSource$f9f2f5c(Lcl/birdie/transantiagomaster/IPhotoTarget;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->receivePhoto(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnFoto:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
