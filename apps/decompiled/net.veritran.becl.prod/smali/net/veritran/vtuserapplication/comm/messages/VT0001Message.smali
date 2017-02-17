.class public Lnet/veritran/vtuserapplication/comm/messages/VT0001Message;
.super Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getConfigurationVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setConfigurationVersionTo(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getConfigurationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setConfigurationTypeTo(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedStateId(I)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedStateGroup(I)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedBannerId(I)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedBannerGroup(I)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedImageId(I)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextSessionTimeout(I)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextConnectionTimeout(I)V

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextStartState(I)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    const/4 v0, 0x1

    return v0
.end method
