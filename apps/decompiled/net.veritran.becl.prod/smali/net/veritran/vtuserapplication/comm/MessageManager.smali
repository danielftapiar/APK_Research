.class public Lnet/veritran/vtuserapplication/comm/MessageManager;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;
.implements Lnet/veritran/vtuserapplication/timeout/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/comm/MessageManager$a;
    }
.end annotation


# static fields
.field private static g:Lnet/veritran/vtuserapplication/comm/MessageManager;

.field private static h:Z


# instance fields
.field private a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

.field private b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/veritran/vtuserapplication/comm/MessageManager;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->e:Z

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->closeCommand()V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    :cond_0
    return-void
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/comm/MessageManager;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/comm/MessageManager;->g:Lnet/veritran/vtuserapplication/comm/MessageManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/comm/MessageManager;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/comm/MessageManager;->g:Lnet/veritran/vtuserapplication/comm/MessageManager;

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/MessageManager;->g:Lnet/veritran/vtuserapplication/comm/MessageManager;

    return-object v0
.end method


# virtual methods
.method public addArray(III[I[Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addArray(III[I[Ljava/lang/String;)V

    return-void
.end method

.method public addToken(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/model/Model;->addRegisterFromMessage(ILjava/lang/String;)V

    return-void
.end method

.method public beginTran()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->e:Z

    return-void
.end method

.method public commitTran()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->e:Z

    return-void
.end method

.method public configurationUpdateFinished(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->configurationUpdateFinished()Z

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->notifyConfigurationUpdateFinished()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->setSessionTimeout()V

    const/4 v0, 0x1

    return v0
.end method

.method protected connectCommandBlocked()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastSynchroTried()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->connectCommandBlocked()V

    return-void
.end method

.method public deleteBanner(II)V
    .locals 0

    return-void
.end method

.method public deleteImage(I)V
    .locals 0

    return-void
.end method

.method public deleteState(II)V
    .locals 3

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Lnet/veritran/vtuserapplication/comm/MessageManager$a;

    const-string v2, ""

    invoke-direct {v1, p1, p2, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->deleteState(II)V

    goto :goto_0
.end method

.method public getArrayFieldNames(I)[I
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArrayFieldNames(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getArrayFieldValues(I)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArrayFieldValues(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArraysList()[I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getArraysList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getBuffer(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getMessageBufferValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBufferArrayID(I)I
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getBufferArrayID(I)I

    move-result v0

    return v0
.end method

.method public getBuffersList()[I
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getMessageBuffersList()[I

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationTypeTo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationTypeTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationVersion()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationVersion()I

    move-result v0

    return v0
.end method

.method public getConfigurationVersionTo()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationVersionTo()I

    move-result v0

    return v0
.end method

.method public getLastRespondedSequenceNumber()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastRespondedSequenceNumber()I

    move-result v0

    return v0
.end method

.method public getLastUpdatedBannerGroup()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastUpdatedBannerGroup()I

    move-result v0

    return v0
.end method

.method public getLastUpdatedBannerId()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastUpdatedBannerId()I

    move-result v0

    return v0
.end method

.method public getLastUpdatedImageId()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastUpdatedImageId()I

    move-result v0

    return v0
.end method

.method public getLastUpdatedStateGroup()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastUpdatedStateGroup()I

    move-result v0

    return v0
.end method

.method public getLastUpdatedStateId()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastUpdatedStateId()I

    move-result v0

    return v0
.end method

.method public getMessageFormatId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MSTM"

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getSequenceNumber()I

    move-result v0

    return v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getSoftwareVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTerminalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getTerminalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoState(I)V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    return-void
.end method

.method public handleError(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->a()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    sget-boolean v1, Lnet/veritran/vtuserapplication/comm/MessageManager;->h:Z

    invoke-virtual {v0, p1, p2, v1}, Lnet/veritran/vtuserapplication/model/Model;->handleError(ILjava/lang/String;Z)V

    return-void
.end method

.method public handleError(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    return-void
.end method

.method public handleResponse(Ljava/lang/StringBuffer;)V
    .locals 4

    const/16 v3, 0x6e

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->a()V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTGW_STATUS="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x223

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->build(Ljava/lang/StringBuffer;Lnet/veritran/vtuserapplication/comm/MessageManager;)Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0xf1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "MSTM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v0, 0x101

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, 0x107

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getMessageType()I

    move-result v1

    if-ne v1, v3, :cond_7

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getTermId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x10f

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getTermId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setTerminalId(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getSequenceNumber()I

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getSequenceNumber()I

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getMessageType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setSequenceNumber(I)V

    const/16 v0, 0x17b

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getMessageType()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x119

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getTermId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getMessageType()I

    move-result v1

    if-eq v1, v3, :cond_9

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getMessageType()I

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getTermId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x11b

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getTermId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setTerminalId(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const/16 v0, 0x151

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getSequenceNumber()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastRespondedSequenceNumber(I)V

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13d

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->d:I

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    goto/16 :goto_0
.end method

.method public handleResponse(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleResponse(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public incrementSequenceNumber()V
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getSequenceNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setSequenceNumber(I)V

    return-void
.end method

.method public init(Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    return-void
.end method

.method public notifyTimedOut()V
    .locals 2

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->a()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->d:I

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    return-void
.end method

.method public restoreTokenPending(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setAppAdministrativeMode(I)V

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->clearVTTokenData()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->vttokenStartUp()V

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->setTokenSalt(Ljava/lang/String;)V

    return-void
.end method

.method public retakeConfigurationUpdate()V
    .locals 3

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0120Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->render()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->connectCommandBlocked()V

    return-void
.end method

.method public saveBanner(II[B)V
    .locals 0

    return-void
.end method

.method public saveImage(I[B)V
    .locals 0

    return-void
.end method

.method public saveState(IILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Lnet/veritran/vtuserapplication/comm/MessageManager$a;

    invoke-direct {v1, p1, p2, p3}, Lnet/veritran/vtuserapplication/comm/MessageManager$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->saveState(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendCheckForSynchro()Z
    .locals 6

    const/4 v1, 0x1

    const/16 v5, 0xc8

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/VT0200SynchroMessage;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200SynchroMessage;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->render()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    const-string v3, "SYNCHRO_CONNECTION_TIMEOUT"

    invoke-interface {v0, v3}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v0}, Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->connectCommandBlocked()V

    const/4 v0, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v5}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->updateApplication(Z)V

    :cond_0
    :goto_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v5, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v2, 0xc9

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v2, 0xca

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    return v0

    :catch_0
    move-exception v3

    const-string v3, "MessageManager"

    const-string v4, "Parameter SYNCHRO_CONNECTION_TIMEOUT does not contain a number"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v5}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->deleteConfigurationFromInternalStorage()V

    move v0, v1

    goto :goto_1
.end method

.method public sendCompletion()V
    .locals 3

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/VT0220Message;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0220Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->render()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->connectCommand()V

    return-void
.end method

.method public sendTransaction()V
    .locals 3

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->render()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->connectCommandBlocked()V

    return-void
.end method

.method public sendVTTokenBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->render()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->connectCommandBlocked()V

    return-void
.end method

.method public sendVTTokenRestoreRequest(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/VT0012Message;

    invoke-direct {v0, p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0012Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->render()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->connectCommandBlocked()V

    return-void
.end method

.method public setAppAdministrativeMode(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setAppAdministrativeMode(I)V

    return-void
.end method

.method public setConfigurationTypeTo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setConfigurationTypeTo(Ljava/lang/String;)V

    return-void
.end method

.method public setConfigurationVersionTo(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setConfigurationVersionTo(I)V

    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    return-void
.end method

.method public setLastRespondedSequenceNumber(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastRespondedSequenceNumber(I)V

    return-void
.end method

.method public setLastSynchroSuccess()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastSynchroSuccess()V

    return-void
.end method

.method public setLastUpdatedBannerGroup(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastUpdatedBannerGroup(I)V

    return-void
.end method

.method public setLastUpdatedBannerId(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastUpdatedBannerId(I)V

    return-void
.end method

.method public setLastUpdatedImageId(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastUpdatedImageId(I)V

    return-void
.end method

.method public setLastUpdatedStateGroup(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastUpdatedStateGroup(I)V

    return-void
.end method

.method public setLastUpdatedStateId(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastUpdatedStateId(I)V

    return-void
.end method

.method public setNextConnectionTimeout(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setNextConnectionTimeout(I)V

    return-void
.end method

.method public setNextSessionTimeout(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setNextSessionTimeout(I)V

    return-void
.end method

.method public setNextStartState(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setNextStartState(I)V

    return-void
.end method

.method public setNextState(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->d:I

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setSequenceNumber(I)V

    return-void
.end method

.method public setStatesToProcess([Lnet/veritran/vtuserapplication/comm/messages/MessageState;)Z
    .locals 5

    const/4 v4, 0x1

    array-length v0, p1

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iget v0, v0, Lnet/veritran/vtuserapplication/comm/messages/MessageState;->_id:I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    iget v1, v1, Lnet/veritran/vtuserapplication/comm/messages/MessageState;->_group:I

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->beginTran()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v2, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->bulkStoreState([Lnet/veritran/vtuserapplication/comm/messages/MessageState;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->commitTran()V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedStateId(I)V

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedStateGroup(I)V

    goto :goto_0
.end method

.method public setTerminalId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->f:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setTerminalId(Ljava/lang/String;)V

    return-void
.end method

.method public verifyConfigurationVersion()V
    .locals 6

    const/4 v0, 0x1

    sput-boolean v0, Lnet/veritran/vtuserapplication/comm/MessageManager;->h:Z

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->clearAESWorkingKey()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getDHPublicKey()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/VT0100Message;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v3

    invoke-interface {v3}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v4

    invoke-interface {v4}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getDeviceBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v5

    invoke-interface {v5}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/veritran/vtuserapplication/comm/messages/VT0100Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->render()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->a:Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/MessageManager;->b:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;->setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->connectCommandBlocked()V

    const/4 v0, 0x0

    sput-boolean v0, Lnet/veritran/vtuserapplication/comm/MessageManager;->h:Z

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->isStarting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/Model;->notifyApplicationUpdate()V

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/Model;->setNormalStartUpMode()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->showApplicationError(I)V

    :cond_1
    return-void
.end method
