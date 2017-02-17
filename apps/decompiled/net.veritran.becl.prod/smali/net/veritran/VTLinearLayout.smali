.class public Lnet/veritran/VTLinearLayout;
.super Landroid/widget/LinearLayout;
.source "VTLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTLinearLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 23
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v1

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BB__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 28
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    check-cast v1, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v1}, Lnet/veritran/VTCommonActivity;->onStop()V

    .line 29
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    check-cast v1, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v1}, Lnet/veritran/VTCommonActivity;->onStart()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 33
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lnet/veritran/VTLinearLayout$1;

    invoke-direct {v1, p0}, Lnet/veritran/VTLinearLayout$1;-><init>(Lnet/veritran/VTLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
