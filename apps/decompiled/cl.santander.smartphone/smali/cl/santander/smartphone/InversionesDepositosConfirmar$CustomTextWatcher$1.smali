.class Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher$1;
.super Ljava/lang/Object;
.source "InversionesDepositosConfirmar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;->access$0(Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;)Lcl/santander/smartphone/InversionesDepositosConfirmar;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->cambiafoco()V

    .line 441
    return-void
.end method
