.class public abstract Lnet/veritran/component/VTListComponent;
.super Lnet/veritran/component/VTUIComponent;
.source "VTListComponent.java"


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getListType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lnet/veritran/component/VTListComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "listtype"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
