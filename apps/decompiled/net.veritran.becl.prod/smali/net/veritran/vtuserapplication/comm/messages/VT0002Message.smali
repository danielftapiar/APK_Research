.class public Lnet/veritran/vtuserapplication/comm/messages/VT0002Message;
.super Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    const/4 v0, 0x0

    return v0
.end method
