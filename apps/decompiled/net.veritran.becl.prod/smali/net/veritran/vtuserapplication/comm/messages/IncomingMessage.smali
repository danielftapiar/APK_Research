.class public abstract Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;
.super Ljava/lang/Object;


# static fields
.field public static _isValid:Z

.field protected static _tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field protected _images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_isValid:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-direct {v2, p0}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;-><init>(Ljava/lang/StringBuffer;)V

    sput-object v2, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    :try_start_0
    const-string v3, "MSG_ID"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->a:Ljava/lang/String;

    const-string v3, "PROD_ID"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->b:Ljava/lang/String;

    const-string v3, "SW_VERSION"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->c:I

    const-string v3, "CONF-TYPE"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->d:Ljava/lang/String;

    const-string v3, "CONF_VERSION"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->e:I

    const-string v3, "MSG_LEN"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->f:I

    const-string v3, "CRC"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/16 v5, 0x20

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->g:Ljava/lang/String;

    sget-object v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->getText()Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->isValidCRC(Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "TERM_ID"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/16 v5, 0x24

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->h:Ljava/lang/String;

    const-string v3, "MSG_TYPE"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->i:I

    const-string v3, "SEQ_NUM"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->j:I

    sget-object v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v4, 0x5

    const-string v5, "LAST_SEQ_NUM_RESP"

    invoke-virtual {v3, v4, v5}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->k:I

    const-string v3, "RESERVED"

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/16 v5, 0x20

    invoke-virtual {v4, v5, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    sget v3, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->f:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v3, v3, 0x88

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static build(Ljava/lang/StringBuffer;Lnet/veritran/vtuserapplication/comm/MessageManager;)Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;
    .locals 3

    const/16 v2, 0x11

    const/4 v0, 0x0

    invoke-static {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->a(Ljava/lang/StringBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->i:I

    sparse-switch v1, :sswitch_data_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :sswitch_0
    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0000Message;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0000Message;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0001Message;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0001Message;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0002Message;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0002Message;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0011Message;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0013Message;-><init>()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->gotoState(I)V

    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;

    invoke-direct {v1, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0110Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->gotoState(I)V

    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;

    invoke-direct {v1, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    goto :goto_0

    :sswitch_7
    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastSynchroSuccess()V

    move-object v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb -> :sswitch_3
        0xd -> :sswitch_4
        0x6e -> :sswitch_5
        0x82 -> :sswitch_6
        0xd2 -> :sswitch_7
    .end sparse-switch
.end method

.method protected static isValidCRC(Ljava/lang/StringBuffer;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO8859_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getConfigurationType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationVersion()I
    .locals 1

    sget v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->e:I

    return v0
.end method

.method public getLastSequenceNumberResponded()I
    .locals 1

    sget v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->k:I

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    sget v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->i:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    sget v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->j:I

    return v0
.end method

.method public getSoftwareVersion()I
    .locals 1

    sget v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->c:I

    return v0
.end method

.method public getTermId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected imagesBuilder()V
    .locals 14

    const/16 v3, 0x44

    const/4 v13, 0x3

    const/4 v11, 0x0

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v1, 0x3

    const-string v2, "IMAGE_COUNT"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    move v10, v11

    :goto_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v10, v0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const-string v1, "IMAGE_ID"

    invoke-virtual {v0, v13, v1}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v2, 0x1

    const-string v4, "IMAGE_ACTION"

    invoke-virtual {v0, v2, v4}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v6, "0"

    const-string v9, "0"

    sget-object v2, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v4, 0x4

    const-string v5, "IMAGE_LEN"

    invoke-virtual {v2, v4, v5}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "IMAGE_TEXT"

    invoke-virtual {v4, v2, v5}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v0, v3, :cond_1

    iget-object v7, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;-><init>(ILjava/lang/String;CII)V

    aput-object v0, v7, v10

    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v11, [Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    new-instance v4, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x55

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;-><init>(ILjava/lang/String;CII)V

    aput-object v4, v0, v10

    goto :goto_1
.end method

.method protected imagesProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    array-length v4, v0

    move v0, v2

    move v3, v2

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    aget-object v5, v5, v0

    iget v5, v5, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;->_id:I

    iget-object v6, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    aget-object v6, v6, v0

    iget-char v6, v6, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;->_action:C

    const/16 v7, 0x44

    if-ne v6, v7, :cond_1

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/comm/MessageManager;->deleteImage(I)V

    :goto_1
    if-nez v3, :cond_0

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setLastUpdatedImageId(I)V

    iget-object v5, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v6, p0, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;->_images:[Lnet/veritran/vtuserapplication/comm/messages/MessageImage;

    aget-object v6, v6, v0

    iget-object v6, v6, Lnet/veritran/vtuserapplication/comm/messages/MessageImage;->_text:Ljava/lang/String;

    invoke-static {v6}, Lnet/veritran/vtuserapplication/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lnet/veritran/vtuserapplication/comm/MessageManager;->saveImage(I[B)V
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

.method public abstract process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
.end method
