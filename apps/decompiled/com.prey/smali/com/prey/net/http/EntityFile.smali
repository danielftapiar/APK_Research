.class public Lcom/prey/net/http/EntityFile;
.super Ljava/lang/Object;
.source "EntityFile.java"


# instance fields
.field private file:Ljava/io/InputStream;

.field private length:I

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/prey/net/http/EntityFile;->file:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/prey/net/http/EntityFile;->length:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/prey/net/http/EntityFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/prey/net/http/EntityFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/prey/net/http/EntityFile;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "file"    # Ljava/io/InputStream;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/prey/net/http/EntityFile;->file:Ljava/io/InputStream;

    .line 49
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/prey/net/http/EntityFile;->length:I

    .line 25
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/prey/net/http/EntityFile;->mimeType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/prey/net/http/EntityFile;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/prey/net/http/EntityFile;->type:Ljava/lang/String;

    .line 57
    return-void
.end method
