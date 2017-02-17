.class public Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;
.super Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;->a:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x1

    const-string v2, "RESP_CODE"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;->a:I

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;->a:I

    return v0
.end method

.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 2

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;->a:I

    if-nez v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1a3

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
