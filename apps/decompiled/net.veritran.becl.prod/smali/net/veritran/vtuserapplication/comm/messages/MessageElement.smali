.class public Lnet/veritran/vtuserapplication/comm/messages/MessageElement;
.super Ljava/lang/Object;


# instance fields
.field public _action:C

.field public _group:I

.field public _id:I

.field public _text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageElement;->_id:I

    iput p2, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageElement;->_group:I

    iput-object p3, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageElement;->_text:Ljava/lang/String;

    iput-char p4, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageElement;->_action:C

    return-void
.end method
