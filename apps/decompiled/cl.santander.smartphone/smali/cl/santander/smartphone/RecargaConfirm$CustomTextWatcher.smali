.class Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;
.super Ljava/lang/Object;
.source "RecargaConfirm.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/RecargaConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/RecargaConfirm;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/RecargaConfirm;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;)Lcl/santander/smartphone/RecargaConfirm;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 343
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 350
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 355
    add-int v1, p2, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 356
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 357
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher$1;-><init>(Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;)V

    .line 364
    const-wide/16 v2, 0x3e8

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    .end local v0    # "h":Landroid/os/Handler;
    :cond_0
    return-void
.end method
