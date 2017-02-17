.class Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher$1;
.super Ljava/lang/Object;
.source "PagoOnlineConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;
    invoke-static {v0}, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;->access$0(Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;)Lcl/santander/smartphone/PagoOnlineConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/PagoOnlineConfirm;->cambiafoco()V

    .line 331
    return-void
.end method
