.class Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher$2;
.super Ljava/lang/Object;
.source "TransferTercerosConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher$2;->this$1:Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher$2;->this$1:Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;
    invoke-static {v0}, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;->access$0(Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;)Lcl/santander/smartphone/TransferTercerosConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferTercerosConfirm;->cambiafoco()V

    .line 721
    return-void
.end method
