.class public Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;
.super Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "SECURE-SALT"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "PSW-VALIDATE"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, p3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "REPOSITORY-LEN"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "REPOSITORY"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, p4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    const-string v0, "TYP"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "0010"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0010Message;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
