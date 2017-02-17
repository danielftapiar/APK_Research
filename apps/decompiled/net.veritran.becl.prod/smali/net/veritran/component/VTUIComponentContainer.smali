.class public abstract Lnet/veritran/component/VTUIComponentContainer;
.super Lnet/veritran/component/VTUIComponent;
.source "VTUIComponentContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addChild(Lnet/veritran/component/VTUIComponent;)V
.end method

.method public definePaddings()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    .local v3, "paddingTop":F
    const/4 v2, 0x0

    .line 34
    .local v2, "paddingRight":F
    const/4 v1, 0x0

    .line 35
    .local v1, "paddingLeft":F
    const/4 v0, 0x0

    .line 64
    .local v0, "paddingBottom":F
    iget-object v4, p0, Lnet/veritran/component/VTUIComponentContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingTop"

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v3

    .line 65
    cmpl-float v4, v3, v6

    if-nez v4, :cond_0

    .line 67
    const/4 v3, 0x0

    .line 70
    :cond_0
    iget-object v4, p0, Lnet/veritran/component/VTUIComponentContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingRight"

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v2

    .line 71
    cmpl-float v4, v2, v6

    if-nez v4, :cond_1

    .line 73
    const/4 v2, 0x0

    .line 76
    :cond_1
    iget-object v4, p0, Lnet/veritran/component/VTUIComponentContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingLeft"

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v1

    .line 77
    cmpl-float v4, v1, v6

    if-nez v4, :cond_2

    .line 79
    const/4 v1, 0x0

    .line 81
    :cond_2
    iget-object v4, p0, Lnet/veritran/component/VTUIComponentContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingBottom"

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v0

    .line 82
    cmpl-float v4, v0, v6

    if-nez v4, :cond_3

    .line 84
    const/4 v0, 0x0

    .line 87
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponentContainer;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v4, v1, v3, v2, v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->setPercentagePaddings(FFFF)V

    .line 88
    return-void
.end method

.method public abstract getChildAt(I)Lnet/veritran/component/VTUIComponent;
.end method

.method public abstract getChildCount()I
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/VTUIComponentContainer;->unregister(Z)V

    .line 18
    return-void
.end method

.method public unregister(Z)V
    .locals 2
    .param p1, "unregisterContainer"    # Z

    .prologue
    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponentContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lnet/veritran/component/VTUIComponentContainer;->getChildAt(I)Lnet/veritran/component/VTUIComponent;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->unregister()V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->unregister()V

    .line 29
    :cond_1
    return-void
.end method
