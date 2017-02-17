.class public Lnet/veritran/vtuserapplication/comm/messages/MessageImage;
.super Lnet/veritran/vtuserapplication/comm/messages/MessageElement;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;CII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/veritran/vtuserapplication/comm/messages/MessageElement;-><init>(IILjava/lang/String;C)V

    iput p4, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;->a:I

    iput p5, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;->b:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;->a:I

    return v0
.end method
