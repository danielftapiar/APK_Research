.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;
.super Ljava/lang/Object;
.source "ComplainDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2$1;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;)V

    .line 434
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    .line 423
    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSelectSource$f9f2f5c(Lcl/birdie/transantiagomaster/IPhotoTarget;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->receivePhoto(Ljava/lang/String;)V

    goto :goto_0
.end method
