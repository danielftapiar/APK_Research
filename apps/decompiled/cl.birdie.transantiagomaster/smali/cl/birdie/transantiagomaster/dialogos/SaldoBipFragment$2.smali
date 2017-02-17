.class final Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtNumeroBip:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 432
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 439
    .local v0, "numeroBip":I
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtRut:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 440
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {v1, v2, v3}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->buscarSaldoBip(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v0    # "numeroBip":I
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    const v3, 0x7f0600d7

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    const/4 v3, 0x1

    .line 434
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
