.class public abstract Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;
.super Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;


# instance fields
.field protected _banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

.field protected _responseCode:I

.field protected _responseMessage:Ljava/lang/String;

.field protected _states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_responseMessage:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x1

    const-string v2, "RESP_CODE"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_responseCode:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x3

    const-string v2, "RESP_MSG_LEN"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_responseCode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_responseCode:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "RESP_MSG_LEN"

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_responseMessage:Ljava/lang/String;
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


# virtual methods
.method protected bannersBuilder()V
    .locals 9

    const/16 v3, 0x44

    const/4 v1, 0x0

    const/4 v8, 0x3

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const-string v2, "BANNER_COUNT"

    invoke-virtual {v0, v8, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    move v0, v1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    new-instance v5, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    invoke-direct {v5}, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;-><init>()V

    aput-object v5, v2, v0

    sget-object v2, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const-string v5, "BANNER_ID"

    invoke-virtual {v2, v8, v5}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    aget-object v5, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;->_id:I

    sget-object v2, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const-string v5, "BANNER_GROUP"

    invoke-virtual {v2, v8, v5}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    aget-object v5, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;->_group:I

    sget-object v5, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v6, 0x1

    const-string v7, "BANNER_ACTION"

    invoke-virtual {v5, v6, v7}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    aget-object v5, v5, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    iput-char v2, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;->_action:C

    sget-object v2, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x5

    const-string v6, "BANNER_LEN"

    invoke-virtual {v2, v5, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "BANNER_TEXT"

    invoke-virtual {v5, v2, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x55

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected bannersProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    array-length v4, v0

    move v0, v2

    move v3, v2

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    aget-object v5, v5, v0

    iget v5, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;->_id:I

    iget-object v6, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    aget-object v6, v6, v0

    iget v6, v6, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;->_group:I

    iget-object v7, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    aget-object v7, v7, v0

    iget-char v7, v7, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;->_action:C

    const/16 v8, 0x44

    if-ne v7, v8, :cond_1

    invoke-virtual {p1, v5, v6}, Lnet/veritran/vtuserapplication/comm/MessageManager;->deleteBanner(II)V

    :goto_1
    if-nez v3, :cond_0

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedBannerId(I)V

    invoke-virtual {p1, v6}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedBannerGroup(I)V

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v7, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_banners:[Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;

    aget-object v7, v7, v0

    iget-object v7, v7, Lnet/veritran/vtuserapplication/comm/messages/MessageBanner;->_text:Ljava/lang/String;

    invoke-static {v7}, Lnet/veritran/vtuserapplication/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lnet/veritran/vtuserapplication/comm/MessageManager;->saveBanner(II[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    move v3, v1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    move v0, v1

    :goto_2
    return v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method protected statesBuilder(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 8

    const/16 v1, 0x44

    const/4 v7, 0x3

    const/4 v3, 0x0

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const-string v2, "STATE_COUNT"

    invoke-virtual {v0, v7, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v0, v4, [Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    new-instance v5, Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    invoke-direct {v5}, Lnet/veritran/vtuserapplication/comm/messages/MessageState;-><init>()V

    aput-object v5, v0, v2

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const-string v5, "STATE_ID"

    invoke-virtual {v0, v7, v5}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    aget-object v5, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageState;->_id:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x2

    const-string v6, "STATE_GROUP"

    invoke-virtual {v0, v5, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    aget-object v5, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageState;->_group:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x1

    const-string v6, "STATE_ACTION"

    invoke-virtual {v0, v5, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    aget-object v5, v5, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-char v0, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageState;->_action:C

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x4

    const-string v6, "STATE_LEN"

    invoke-virtual {v0, v5, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "STATE_TEXT"

    invoke-virtual {v5, v0, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    aget-object v5, v5, v2

    iput-object v0, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageState;->_text:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x55

    goto :goto_1

    :cond_1
    return-void
.end method

.method public statesProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setStatesToProcess([Lnet/veritran/vtuserapplication/comm/messages/MessageState;)Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;->_states:[Lnet/veritran/vtuserapplication/comm/messages/MessageState;

    return v0
.end method
