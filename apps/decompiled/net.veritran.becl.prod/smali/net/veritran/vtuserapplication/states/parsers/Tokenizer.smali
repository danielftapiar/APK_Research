.class public Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->a:Ljava/util/Vector;

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    iput-object p1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->a:Ljava/util/Vector;

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    iput-object p1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->b:Ljava/lang/String;

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    return-void
.end method


# virtual methods
.method public add(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;-><init>()V

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->setLen(I)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->b:Ljava/lang/String;

    iget v2, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    iget v3, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->getLen()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    iget v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->getLen()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addRawData(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->b:Ljava/lang/String;

    return-void
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    return-void
.end method

.method public clean()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->b:Ljava/lang/String;

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    iput v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    return-void
.end method

.method public currentLen()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->a:Ljava/util/Vector;

    iget v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->getLen()I

    move-result v0

    return v0
.end method

.method public currentVal()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->a:Ljava/util/Vector;

    iget v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnprocessedLength()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->c:I

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->currentVal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/Tokenizer;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
