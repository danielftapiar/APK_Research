.class public Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;
.super Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;,
        Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

.field private c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/IncomingMessage;-><init>()V

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v2, 0x3

    const-string v3, "NEXT_STATE"

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->a:I

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v2, 0x2

    const-string v3, "TOKEN_COUNT"

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-array v0, v2, [Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->b:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v4, 0x3

    const-string v5, "TOKEN_ID"

    invoke-virtual {v3, v4, v5}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v5, 0x3

    const-string v6, "TOKEN_LEN"

    invoke-virtual {v4, v5, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const-string v6, "TOKEN_VAL"

    invoke-virtual {v5, v4, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

    invoke-direct {v5, p0, v3, v4}, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;-><init>(Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;ILjava/lang/String;)V

    iget-object v3, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->b:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v2, 0x2

    const-string v3, "ARRAY_COUNT"

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-array v0, v5, [Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_4

    sget-object v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v2, 0x3

    const-string v3, "ARRAY_ID"

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v3, 0x3

    const-string v6, "ROWS"

    invoke-virtual {v2, v3, v6}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v2, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v3, 0x2

    const-string v7, "FIELDS"

    invoke-virtual {v2, v3, v7}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    invoke-direct {v8, p0, v0, v6, v7}, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;-><init>(Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;III)V

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    sget-object v2, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v3, 0x2

    const-string v9, "FIELD_ID"

    invoke-virtual {v2, v3, v9}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->d:[I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    move v0, v1

    :goto_3
    if-ge v3, v6, :cond_3

    move v2, v0

    move v0, v1

    :goto_4
    if-ge v0, v7, :cond_2

    sget-object v9, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    const/4 v10, 0x3

    const-string v11, "LEN"

    invoke-virtual {v9, v10, v11}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v11, "LEN"

    invoke-virtual {v10, v9, v11}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->add(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->e:[Ljava/lang/String;

    aput-object v9, v10, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    aput-object v8, v0, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->imagesBuilder()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->b:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->b:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

    aget-object v3, v3, v1

    iget v3, v3, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;->a:I

    iget-object v4, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->b:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;

    aget-object v4, v4, v1

    iget-object v4, v4, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lnet/veritran/vtuserapplication/comm/MessageManager;->addToken(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    array-length v7, v1

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    aget-object v0, v0, v6

    iget v1, v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->a:I

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    aget-object v0, v0, v6

    iget v2, v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->b:I

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    aget-object v0, v0, v6

    iget v3, v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->c:I

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    aget-object v0, v0, v6

    iget-object v4, v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->d:[I

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->c:[Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;

    aget-object v0, v0, v6

    iget-object v5, v0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->e:[Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/comm/MessageManager;->addArray(III[I[Ljava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->imagesProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;->a:I

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    const/4 v0, 0x1

    return v0
.end method
