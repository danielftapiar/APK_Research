.class public Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;
.super Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "CONF-TYPE-TO"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getConfigurationTypeTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "CONF-VERSION-FROM"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getConfigurationVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "CONF-VERSION-TO"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getConfigurationVersionTo()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "LAST-STATE-UPDATED"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getLastUpdatedStateId()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "LAST-GROUP-UPDATED"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getLastUpdatedStateGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "LAST-BANNER-UPDATED"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getLastUpdatedBannerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "LAST-BANNER-GROUP-UPDATED"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getLastUpdatedBannerGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "LAST-IMAGE-UPDATED"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getLastUpdatedImageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    const-string v0, "TYP"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "0120"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
