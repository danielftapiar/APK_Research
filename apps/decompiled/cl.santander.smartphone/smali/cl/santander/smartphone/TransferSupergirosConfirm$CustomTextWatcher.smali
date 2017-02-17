.class Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;
.super Ljava/lang/Object;
.source "TransferSupergirosConfirm.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/TransferSupergirosConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;)Lcl/santander/smartphone/TransferSupergirosConfirm;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 604
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 610
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-wide/16 v3, 0x3e8

    .line 615
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, v1, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    add-int v1, p2, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 617
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 618
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher$1;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    .end local v0    # "h":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, v1, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    add-int v1, p2, p4

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 629
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 630
    .restart local v0    # "h":Landroid/os/Handler;
    new-instance v1, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher$2;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
