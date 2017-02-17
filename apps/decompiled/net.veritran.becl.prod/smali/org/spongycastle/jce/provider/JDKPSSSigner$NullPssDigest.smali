.class Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;
.super Ljava/lang/Object;
.source "JDKPSSSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKPSSSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NullPssDigest"
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private baseDigest:Lorg/spongycastle/crypto/Digest;

.field private oddTime:Z

.field final synthetic this$0:Lorg/spongycastle/jce/provider/JDKPSSSigner;


# direct methods
.method public constructor <init>(Lorg/spongycastle/jce/provider/JDKPSSSigner;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p2, "mgfDigest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->this$0:Lorg/spongycastle/jce/provider/JDKPSSSigner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->oddTime:Z

    .line 337
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->baseDigest:Lorg/spongycastle/crypto/Digest;

    .line 338
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 364
    .local v0, "res":[B
    iget-boolean v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->oddTime:Z

    if-eqz v2, :cond_1

    .line 366
    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->reset()V

    .line 377
    iget-boolean v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->oddTime:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->oddTime:Z

    .line 379
    array-length v1, v0

    return v1

    .line 370
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->baseDigest:Lorg/spongycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 372
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->baseDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const-string v0, "NULL"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->baseDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 385
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->baseDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 386
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 352
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 353
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 358
    return-void
.end method
