.class Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;
.super Ljava/lang/Object;
.source "InversionesDepositosCobrarConfirmar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;)Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 430
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 437
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 442
    add-int v1, p2, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 443
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 444
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher$1;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;)V

    .line 451
    const-wide/16 v2, 0x3e8

    .line 444
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    .end local v0    # "h":Landroid/os/Handler;
    :cond_0
    return-void
.end method
