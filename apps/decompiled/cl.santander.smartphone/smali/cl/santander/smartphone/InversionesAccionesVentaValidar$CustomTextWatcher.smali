.class Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaValidar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/InversionesAccionesVentaValidar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;)Lcl/santander/smartphone/InversionesAccionesVentaValidar;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 636
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 643
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 648
    add-int v1, p2, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 649
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 650
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher$1;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;)V

    .line 657
    const-wide/16 v2, 0x3e8

    .line 650
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    .end local v0    # "h":Landroid/os/Handler;
    :cond_0
    return-void
.end method
