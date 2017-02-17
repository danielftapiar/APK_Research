.class Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher$1;
.super Ljava/lang/Object;
.source "InversionesDepositosCobrarConfirmar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;->access$0(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;)Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->cambiafoco()V

    .line 450
    return-void
.end method
