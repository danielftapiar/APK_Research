.class public Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;
.super Landroid/view/View;
.source "VTInputHidden.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTInputHidden;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTHiddenComponentView"
.end annotation


# instance fields
.field public text:Ljava/lang/String;

.field final synthetic this$0:Lnet/veritran/component/VTInputHidden;


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTInputHidden;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTInputHidden;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    iput-object p1, p0, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->this$0:Lnet/veritran/component/VTInputHidden;

    .line 17
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v0, "VTInputHiddenComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onMeasure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> widthMeasureSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";heightMeasureSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v3, v3}, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->setMeasuredDimension(II)V

    .line 34
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 83
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 143
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 24
    const-string v0, "VTInputHiddenComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 131
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 107
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 65
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 101
    return-void
.end method
