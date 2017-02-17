.class public Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;
.super Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;-><init>()V

    :try_start_0
    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-ne v0, v2, :cond_1

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x1

    const-string v2, "CONF_TYPE_TO"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->a:Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x5

    const-string v2, "CONF_VERSION_FROM"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x5

    const-string v2, "CONF_VERSION_TO"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->b:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x3

    const-string v2, "CONNECTION_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->c:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x3

    const-string v2, "SESSION_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->d:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x3

    const-string v2, "START_STATE"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->e:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/16 v1, 0x20

    const-string v2, "SS"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->f:Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/16 v1, 0x80

    const-string v2, "K"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->setDHPublicKeyPeer(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->statesBuilder(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->bannersBuilder()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->imagesBuilder()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lnet/veritran/vtuserapplication/comm/MessageManager;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->restoreTokenPending(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDHPublicKeyPeer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->g:Ljava/lang/String;

    return-object v0
.end method

.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setSequenceNumber(I)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastRespondedSequenceNumber(I)V

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-ne v2, v6, :cond_2

    :cond_0
    const/16 v1, 0x15b

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseMessage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->getDHPublicKeyPeer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->getDHPublicKeyPeer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->setDHPublicKeyPeer(Ljava/lang/String;)V

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->configurationUpdateFinished(Z)Z

    invoke-virtual {p1, v4}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    :cond_3
    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-ne v2, v5, :cond_b

    :cond_4
    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->b:I

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setConfigurationVersionTo(I)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setConfigurationTypeTo(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedStateId(I)V

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedStateGroup(I)V

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedBannerId(I)V

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedBannerGroup(I)V

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedImageId(I)V

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->d:I

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextSessionTimeout(I)V

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->c:I

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextConnectionTimeout(I)V

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->e:I

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextStartState(I)V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->statesProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->bannersProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->imagesProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->f:Ljava/lang/String;

    invoke-static {p1, v2}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->a(Lnet/veritran/vtuserapplication/comm/MessageManager;Ljava/lang/String;)Z

    :cond_6
    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v1, :cond_7

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-ne v2, v5, :cond_a

    :cond_7
    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->configurationUpdateFinished(Z)Z

    invoke-virtual {p1, v4}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    :goto_2
    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eqz v2, :cond_1

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->_responseCode:I

    if-eq v2, v6, :cond_1

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1cf

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v2, v0

    goto :goto_1

    :cond_a
    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_2
.end method

.method public setDHPublicKeyPeer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;->g:Ljava/lang/String;

    return-void
.end method
