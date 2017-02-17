.class public Lnet/veritran/vtuserapplication/comm/messages/VT0000Message;
.super Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0000Message;->getSoftwareVersion()I

    move-result v0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xf1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0000Message;->getSoftwareVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
