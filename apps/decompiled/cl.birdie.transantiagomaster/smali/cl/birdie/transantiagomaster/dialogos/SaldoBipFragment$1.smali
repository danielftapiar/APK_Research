.class final Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$1;
.super Ljava/lang/Object;
.source "SaldoBipFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 418
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    .line 419
    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/google/zxing/client/android/CaptureActivity;

    .line 418
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, "bipIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 423
    return-void
.end method
