.class public abstract Lnet/veritran/vtuserapplication/states/State;
.super Ljava/lang/Object;


# static fields
.field protected static _messageManager:Lnet/veritran/vtuserapplication/comm/MessageManager;

.field protected static _tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    sget-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->add(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/states/State;->a:I

    sget-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->add(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/StateFactory;->getInnerType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/states/State;->d:I

    sget-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->add(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/states/State;->c:I

    return-void
.end method

.method public static setMessageManager(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/states/State;->_messageManager:Lnet/veritran/vtuserapplication/comm/MessageManager;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getGroup()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/states/State;->c:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/states/State;->a:I

    return v0
.end method

.method public getNextState()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/states/State;->b:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/states/State;->d:I

    return v0
.end method

.method public abstract process()V
.end method

.method public setGroup(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/states/State;->c:I

    return-void
.end method

.method public setNextState(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/states/State;->b:I

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->begin()V

    sget-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->read()Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->read()Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/states/State;->_tokenizer:Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->read()Ljava/lang/String;

    return-void
.end method
