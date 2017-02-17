.class public Lorg/spongycastle/crypto/signers/ECGOST3410Signer;
.super Ljava/lang/Object;
.source "ECGOST3410Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 14
    .param p1, "message"    # [B

    .prologue
    const/4 v13, 0x1

    .line 61
    array-length v11, p1

    new-array v4, v11, [B

    .line 62
    .local v4, "mRev":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v11, v4

    if-eq v2, v11, :cond_0

    .line 64
    array-length v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v2

    aget-byte v11, p1, v11

    aput-byte v11, v4, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v13, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 68
    .local v1, "e":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 70
    .local v5, "n":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 71
    .local v7, "r":Ljava/math/BigInteger;
    const/4 v9, 0x0

    .line 75
    .local v9, "s":Ljava/math/BigInteger;
    :cond_1
    const/4 v3, 0x0

    .line 81
    .local v3, "k":Ljava/math/BigInteger;
    :cond_2
    new-instance v3, Ljava/math/BigInteger;

    .end local v3    # "k":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v11, v12}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 83
    .restart local v3    # "k":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 85
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 87
    .local v6, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    .line 89
    .local v10, "x":Ljava/math/BigInteger;
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 91
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 93
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    .line 95
    .local v0, "d":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 97
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 99
    const/4 v11, 0x2

    new-array v8, v11, [Ljava/math/BigInteger;

    .line 101
    .local v8, "res":[Ljava/math/BigInteger;
    const/4 v11, 0x0

    aput-object v7, v8, v11

    .line 102
    aput-object v9, v8, v13

    .line 104
    return-object v8
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 30
    if-eqz p1, :cond_1

    .line 32
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 34
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 36
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 37
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 49
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 41
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 42
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 47
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 117
    array-length v11, p1

    new-array v5, v11, [B

    .line 118
    .local v5, "mRev":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v5

    if-eq v4, v11, :cond_0

    .line 120
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v4

    aget-byte v11, p1, v11

    aput-byte v11, v5, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v3, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 124
    .local v3, "e":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    .line 127
    .local v6, "n":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_1

    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    .line 129
    :cond_1
    const/4 v11, 0x0

    .line 150
    :goto_1
    return v11

    .line 133
    :cond_2
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_3

    invoke-virtual {p3, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_4

    .line 135
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 140
    .local v8, "v":Ljava/math/BigInteger;
    invoke-virtual {p3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 141
    .local v9, "z1":Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 143
    .local v10, "z2":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 144
    .local v0, "G":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 146
    .local v1, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v0, v9, v1, v10}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 148
    .local v7, "point":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 150
    .local v2, "R":Ljava/math/BigInteger;
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_1
.end method
