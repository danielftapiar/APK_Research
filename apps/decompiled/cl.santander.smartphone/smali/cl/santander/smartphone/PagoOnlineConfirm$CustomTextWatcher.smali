.class Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;
.super Ljava/lang/Object;
.source "PagoOnlineConfirm.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/PagoOnlineConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PagoOnlineConfirm;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;)Lcl/santander/smartphone/PagoOnlineConfirm;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 311
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 318
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 323
    add-int v1, p2, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 325
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher$1;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;)V

    .line 332
    const-wide/16 v2, 0x3e8

    .line 325
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    .end local v0    # "h":Landroid/os/Handler;
    :cond_0
    return-void
.end method
