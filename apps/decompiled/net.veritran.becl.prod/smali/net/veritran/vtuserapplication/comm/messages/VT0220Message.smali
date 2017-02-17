.class public Lnet/veritran/vtuserapplication/comm/messages/VT0220Message;
.super Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    const-string v0, "TYP"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "0220"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0220Message;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
