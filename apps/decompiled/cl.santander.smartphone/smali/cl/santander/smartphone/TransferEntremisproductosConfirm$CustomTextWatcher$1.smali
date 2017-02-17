.class Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher$1;
.super Ljava/lang/Object;
.source "TransferEntremisproductosConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;
    invoke-static {v0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;->access$0(Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;)Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->cambiafoco()V

    .line 311
    return-void
.end method
