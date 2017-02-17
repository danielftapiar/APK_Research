.class public Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLen()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->b:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setLen(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->b:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->c:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerElement;->a:Ljava/lang/String;

    return-void
.end method
