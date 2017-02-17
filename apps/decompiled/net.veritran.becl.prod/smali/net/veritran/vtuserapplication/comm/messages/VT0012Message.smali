.class public Lnet/veritran/vtuserapplication/comm/messages/VT0012Message;
.super Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "PSW-VALIDATE"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0012Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    const-string v0, "TYP"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "0012"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0012Message;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
