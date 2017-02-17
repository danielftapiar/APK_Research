.class Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher$1;
.super Ljava/lang/Object;
.source "RecargaConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/RecargaConfirm;
    invoke-static {v0}, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;->access$0(Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;)Lcl/santander/smartphone/RecargaConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/RecargaConfirm;->cambiafoco()V

    .line 363
    return-void
.end method
