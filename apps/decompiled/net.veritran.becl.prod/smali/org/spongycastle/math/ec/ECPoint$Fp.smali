.class public Lorg/spongycastle/math/ec/ECPoint$Fp;
.super Lorg/spongycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 2
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 185
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 191
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 248
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, p0

    .line 250
    goto :goto_0

    .line 254
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v4, p1, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v4, p1, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 263
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_3
    iget-object v3, p1, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p1, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 268
    .local v0, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p1, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 269
    .local v1, "x3":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 271
    .local v2, "y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-direct {p1, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    goto :goto_0
.end method

.method declared-synchronized assertECMultiplier()V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lorg/spongycastle/math/ec/WNafMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WNafMultiplier;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEncoded()[B
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 198
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    new-array v1, v8, [B

    .line 236
    :goto_0
    return-object v1

    .line 203
    :cond_0
    # getter for: Lorg/spongycastle/math/ec/ECPoint;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;
    invoke-static {}, Lorg/spongycastle/math/ec/ECPoint;->access$000()Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECFieldElement;)I

    move-result v4

    .line 205
    .local v4, "qLength":I
    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    if-eqz v5, :cond_2

    .line 209
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getY()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    const/4 v0, 0x3

    .line 218
    .local v0, "PC":B
    :goto_1
    # getter for: Lorg/spongycastle/math/ec/ECPoint;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;
    invoke-static {}, Lorg/spongycastle/math/ec/ECPoint;->access$000()Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 219
    .local v2, "X":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [B

    .line 221
    .local v1, "PO":[B
    aput-byte v0, v1, v7

    .line 222
    array-length v5, v2

    invoke-static {v2, v7, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 215
    .end local v0    # "PC":B
    .end local v1    # "PO":[B
    .end local v2    # "X":[B
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "PC":B
    goto :goto_1

    .line 228
    .end local v0    # "PC":B
    :cond_2
    # getter for: Lorg/spongycastle/math/ec/ECPoint;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;
    invoke-static {}, Lorg/spongycastle/math/ec/ECPoint;->access$000()Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 229
    .restart local v2    # "X":[B
    # getter for: Lorg/spongycastle/math/ec/ECPoint;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;
    invoke-static {}, Lorg/spongycastle/math/ec/ECPoint;->access$000()Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getY()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v3

    .line 230
    .local v3, "Y":[B
    array-length v5, v2

    array-length v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [B

    .line 232
    .restart local v1    # "PO":[B
    const/4 v5, 0x4

    aput-byte v5, v1, v7

    .line 233
    array-length v5, v2

    invoke-static {v2, v7, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    array-length v6, v3

    invoke-static {v3, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 5

    .prologue
    .line 314
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 303
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    .local v0, "THREE":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v1, "TWO":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v2, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v3, "x3":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v4, "y3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p0

    .line 283
    .end local v0    # "THREE":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v1    # "TWO":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v2    # "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "x3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v4    # "y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-nez v5, :cond_1

    .line 287
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 290
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 291
    .restart local v1    # "TWO":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 292
    .restart local v0    # "THREE":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v6, v6, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 294
    .restart local v2    # "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 295
    .restart local v3    # "x3":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 297
    .restart local v4    # "y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-boolean v7, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v5, v6, v3, v4, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v5

    goto :goto_0
.end method
