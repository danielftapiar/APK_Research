.class public Lcom/prey/actions/fileretrieval/FileretrievalDto;
.super Ljava/lang/Object;
.source "FileretrievalDto.java"


# instance fields
.field private fileId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private status:I

.field private total:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->size:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->status:I

    return v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->total:J

    return-wide v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->fileId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->path:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->size:J

    .line 40
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->status:I

    .line 48
    return-void
.end method

.method public setTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/prey/actions/fileretrieval/FileretrievalDto;->total:J

    .line 56
    return-void
.end method
