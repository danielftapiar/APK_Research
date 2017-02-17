.class public Lnet/veritran/component/VTInputHidden;
.super Lnet/veritran/component/VTUIComponent;
.source "VTInputHidden.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTInputHiddenComponent"


# instance fields
.field v:Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 166
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 167
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTInputHidden;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 168
    new-instance v0, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;

    invoke-direct {v0, p0, p1}, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;-><init>(Lnet/veritran/component/VTInputHidden;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/veritran/component/VTInputHidden;->v:Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;

    .line 170
    return-void
.end method

.method private initInputHidden()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lnet/veritran/component/VTInputHidden;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "sDefaultText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lnet/veritran/component/VTInputHidden;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lnet/veritran/component/VTInputHidden;->v:Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;

    iput-object v0, v1, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->text:Ljava/lang/String;

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTInputHidden;->checkEventType(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lnet/veritran/component/VTInputHidden;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lnet/veritran/component/VTInputHidden;->initInputHidden()V

    .line 163
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/veritran/component/VTInputHidden;->v:Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 176
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 178
    invoke-virtual {p0}, Lnet/veritran/component/VTInputHidden;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    const-string v2, "all"

    new-instance v3, Lnet/veritran/VisualInputComponent;

    iget-object v0, p0, Lnet/veritran/component/VTInputHidden;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    iget-object v4, p0, Lnet/veritran/component/VTInputHidden;->v:Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;

    invoke-direct {v3, v0, v4}, Lnet/veritran/VisualInputComponent;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTCommonActivity$InputsByArea;->put(Ljava/lang/String;Lnet/veritran/VisualInputComponent;)V

    .line 180
    invoke-direct {p0}, Lnet/veritran/component/VTInputHidden;->initInputHidden()V

    .line 181
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method
