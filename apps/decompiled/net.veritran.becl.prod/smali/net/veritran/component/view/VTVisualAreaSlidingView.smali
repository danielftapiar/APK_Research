.class public Lnet/veritran/component/view/VTVisualAreaSlidingView;
.super Lnet/veritran/component/view/VTVisualAreaView;
.source "VTVisualAreaSlidingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTVisualAreaSlidingView"


# instance fields
.field private onAnimEnd:Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lnet/veritran/component/view/VTVisualAreaView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lnet/veritran/component/view/VTVisualAreaView;->onAnimationEnd()V

    .line 29
    iget-object v0, p0, Lnet/veritran/component/view/VTVisualAreaSlidingView;->onAnimEnd:Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;

    invoke-interface {v0}, Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;->onAnimationEnd()V

    .line 30
    return-void
.end method

.method public setOnAnimationEnd(Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;)V
    .locals 0
    .param p1, "onAnimEnd"    # Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;

    .prologue
    .line 17
    iput-object p1, p0, Lnet/veritran/component/view/VTVisualAreaSlidingView;->onAnimEnd:Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;

    .line 18
    return-void
.end method
