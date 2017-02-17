.class public Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;
.super Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;-><init>()V

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a:I

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->b:I

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x1

    const-string v2, "RESP_CODE"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x5

    const-string v2, "REPOSITORY-LEN"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->b:I

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->b:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->b:I

    const-string v2, "REPOSITORY"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lnet/veritran/vtuserapplication/comm/MessageManager;I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setAppAdministrativeMode(I)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    return v1
.end method


# virtual methods
.method public getRepository()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a:I

    return v0
.end method

.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x1d

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    const/16 v1, 0x82

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->addToken(ILjava/lang/String;)V

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a:I

    iput v1, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a:I

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x83

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->addToken(ILjava/lang/String;)V

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0x1af

    invoke-static {p1, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a(Lnet/veritran/vtuserapplication/comm/MessageManager;I)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1b1

    invoke-static {p1, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a(Lnet/veritran/vtuserapplication/comm/MessageManager;I)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1b7

    invoke-static {p1, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a(Lnet/veritran/vtuserapplication/comm/MessageManager;I)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1bb

    invoke-static {p1, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;->a(Lnet/veritran/vtuserapplication/comm/MessageManager;I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
