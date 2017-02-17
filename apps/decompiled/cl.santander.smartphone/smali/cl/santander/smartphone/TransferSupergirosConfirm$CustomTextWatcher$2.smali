.class Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher$2;
.super Ljava/lang/Object;
.source "TransferSupergirosConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher$2;->this$1:Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher$2;->this$1:Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;
    invoke-static {v0}, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;->access$0(Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;)Lcl/santander/smartphone/TransferSupergirosConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->cambiafoco()V

    .line 636
    return-void
.end method
