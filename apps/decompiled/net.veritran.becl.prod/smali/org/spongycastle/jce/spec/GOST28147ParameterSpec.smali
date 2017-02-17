.class public Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;
.super Ljava/lang/Object;
.source "GOST28147ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B

.field private sBox:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sBoxName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    .line 14
    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 37
    invoke-static {p1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "sBoxName"    # Ljava/lang/String;
    .param p2, "iv"    # [B

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 45
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    .line 47
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "sBox"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    .line 14
    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 19
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 21
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3
    .param p1, "sBox"    # [B
    .param p2, "iv"    # [B

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;-><init>([B)V

    .line 29
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    .line 31
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    if-nez v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 69
    .local v0, "tmp":[B
    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getSbox()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    return-object v0
.end method
