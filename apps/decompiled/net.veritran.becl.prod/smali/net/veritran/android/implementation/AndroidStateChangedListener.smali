.class public Lnet/veritran/android/implementation/AndroidStateChangedListener;
.super Lnet/veritran/vtuserapplication/model/StateChangedHandler;
.source "AndroidStateChangedListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/StateChangedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public configurationUpdateCompleted()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->deleteConfigurationFromInternalStorage()V

    .line 37
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->downloadXMLConfiguration()V

    .line 38
    return-void
.end method

.method public newStateCalled(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 30
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 33
    :cond_0
    return-void
.end method

.method public stateChanged(Lnet/veritran/vtuserapplication/states/State;)V
    .locals 0
    .param p1, "state"    # Lnet/veritran/vtuserapplication/states/State;

    .prologue
    .line 19
    return-void
.end method

.method public updateStartUp(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 26
    return-void
.end method
