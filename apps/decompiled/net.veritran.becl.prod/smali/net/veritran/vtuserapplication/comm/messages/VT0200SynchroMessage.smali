.class public Lnet/veritran/vtuserapplication/comm/messages/VT0200SynchroMessage;
.super Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0120"

    sput-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0200SynchroMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    return-void
.end method


# virtual methods
.method protected getBuffersList(Lnet/veritran/vtuserapplication/comm/MessageManager;)[I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    sget-object v1, Lnet/veritran/vtuserapplication/comm/messages/VT0200SynchroMessage;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lnet/veritran/vtuserapplication/model/Model;->addMessageBuffer(ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    return-object v0
.end method

.method protected manageArrays(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "COUNT"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200SynchroMessage;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    return-void
.end method
