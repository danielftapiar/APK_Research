.class public Lorg/spongycastle/math/ec/ECCurve$Fp;
.super Lorg/spongycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field infinity:Lorg/spongycastle/math/ec/ECPoint$Fp;

.field q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECCurve;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 44
    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 45
    invoke-virtual {p0, p3}, Lorg/spongycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 46
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, v1, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->infinity:Lorg/spongycastle/math/ec/ECPoint$Fp;

    .line 47
    return-void
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 66
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 14
    .param p1, "encoded"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, "p":Lorg/spongycastle/math/ec/ECPoint;
    aget-byte v10, p1, v2

    packed-switch v10, :pswitch_data_0

    .line 138
    :pswitch_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid point encoding 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, p1, v2

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 83
    :pswitch_1
    array-length v10, p1

    if-le v10, v9, :cond_0

    .line 85
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Invalid point encoding"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 87
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$Fp;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 141
    :goto_0
    return-object v4

    .line 92
    :pswitch_2
    aget-byte v10, p1, v2

    and-int/lit8 v8, v10, 0x1

    .line 93
    .local v8, "ytilde":I
    array-length v10, p1

    add-int/lit8 v10, v10, -0x1

    new-array v3, v10, [B

    .line 95
    .local v3, "i":[B
    array-length v10, v3

    invoke-static {p1, v9, v3, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    new-instance v5, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v10, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v9, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v5, v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 98
    .local v5, "x":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    iget-object v11, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    iget-object v11, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 99
    .local v0, "alpha":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 105
    .local v1, "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v1, :cond_1

    .line 107
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Invalid point compression"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 110
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v9

    .line 112
    .local v2, "bit0":I
    :cond_2
    if-ne v2, v8, :cond_3

    .line 114
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$Fp;

    .end local v4    # "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-direct {v4, p0, v5, v1, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .restart local v4    # "p":Lorg/spongycastle/math/ec/ECPoint;
    goto :goto_0

    .line 118
    :cond_3
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$Fp;

    .end local v4    # "p":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v10, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v11, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v12, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, p0, v5, v10, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 121
    .restart local v4    # "p":Lorg/spongycastle/math/ec/ECPoint;
    goto :goto_0

    .line 127
    .end local v0    # "alpha":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v1    # "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v2    # "bit0":I
    .end local v3    # "i":[B
    .end local v5    # "x":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "ytilde":I
    :pswitch_3
    array-length v10, p1

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x2

    new-array v6, v10, [B

    .line 128
    .local v6, "xEnc":[B
    array-length v10, p1

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x2

    new-array v7, v10, [B

    .line 130
    .local v7, "yEnc":[B
    array-length v10, v6

    invoke-static {p1, v9, v6, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    array-length v10, v6

    add-int/lit8 v10, v10, 0x1

    array-length v11, v7

    invoke-static {p1, v10, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$Fp;

    .end local v4    # "p":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v10, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v11, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v9, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v10, v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v11, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v12, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v9, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v11, v12, v13}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, p0, v10, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 136
    .restart local v4    # "p":Lorg/spongycastle/math/ec/ECPoint;
    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    if-ne p1, p0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/math/ec/ECCurve$Fp;

    if-nez v3, :cond_2

    move v1, v2

    .line 159
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 162
    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .line 164
    .local v0, "other":Lorg/spongycastle/math/ec/ECCurve$Fp;
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 61
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getInfinity()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->infinity:Lorg/spongycastle/math/ec/ECPoint$Fp;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
