.class public Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;
.super Ljava/lang/Object;
.source "ECMQVBasicAgreement.java"

# interfaces
.implements Lorg/spongycastle/crypto/BasicAgreement;


# instance fields
.field privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateMqvAgreement(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 16
    .param p1, "parameters"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p2, "d1U"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "d2U"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p4, "Q2U"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .param p5, "Q1V"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .param p6, "Q2V"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .prologue
    .line 49
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 50
    .local v4, "n":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    div-int/lit8 v2, v13, 0x2

    .line 51
    .local v2, "e":I
    sget-object v13, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 55
    .local v6, "powE":Ljava/math/BigInteger;
    if-nez p4, :cond_0

    .line 57
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 64
    .local v7, "q":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 65
    .local v9, "x":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 66
    .local v10, "xBar":Ljava/math/BigInteger;
    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 67
    .local v0, "Q2UBar":Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 69
    .local v8, "s":Ljava/math/BigInteger;
    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    .line 70
    .local v11, "xPrime":Ljava/math/BigInteger;
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 71
    .local v12, "xPrimeBar":Ljava/math/BigInteger;
    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 73
    .local v1, "Q2VBar":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 76
    .local v3, "hs":Ljava/math/BigInteger;
    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-static {v13, v14, v15, v3}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 79
    .local v5, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 81
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Infinity is not a valid agreement value for MQV"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 61
    .end local v0    # "Q2UBar":Ljava/math/BigInteger;
    .end local v1    # "Q2VBar":Ljava/math/BigInteger;
    .end local v3    # "hs":Ljava/math/BigInteger;
    .end local v5    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .end local v7    # "q":Lorg/spongycastle/math/ec/ECPoint;
    .end local v8    # "s":Ljava/math/BigInteger;
    .end local v9    # "x":Ljava/math/BigInteger;
    .end local v10    # "xBar":Ljava/math/BigInteger;
    .end local v11    # "xPrime":Ljava/math/BigInteger;
    .end local v12    # "xPrimeBar":Ljava/math/BigInteger;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .restart local v7    # "q":Lorg/spongycastle/math/ec/ECPoint;
    goto :goto_0

    .line 84
    .restart local v0    # "Q2UBar":Ljava/math/BigInteger;
    .restart local v1    # "Q2VBar":Ljava/math/BigInteger;
    .restart local v3    # "hs":Ljava/math/BigInteger;
    .restart local v5    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v8    # "s":Ljava/math/BigInteger;
    .restart local v9    # "x":Ljava/math/BigInteger;
    .restart local v10    # "xBar":Ljava/math/BigInteger;
    .restart local v11    # "xPrime":Ljava/math/BigInteger;
    .restart local v12    # "xPrimeBar":Ljava/math/BigInteger;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 9
    .param p1, "pubKey"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 29
    move-object v8, p1

    check-cast v8, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    .line 31
    .local v8, "pubParams":Lorg/spongycastle/crypto/params/MQVPublicParameters;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v2

    .line 33
    .local v2, "staticPrivateKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getEphemeralPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v3

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v4

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->getStaticPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->calculateMqvAgreement(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 37
    .local v7, "agreement":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "key"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 24
    check-cast p1, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    .end local p1    # "key":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    .line 25
    return-void
.end method
