.class public Lnet/veritran/android/implementation/MD5DigestImplementation;
.super Ljava/lang/Object;
.source "MD5DigestImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/DigestInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MD5DigestImplementation"


# instance fields
.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/android/implementation/MD5DigestImplementation;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "MD5DigestImplementation"

    const-string v2, "Catched exception empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 42
    iget-object v2, p0, Lnet/veritran/android/implementation/MD5DigestImplementation;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 44
    .local v0, "computedMsg":[B
    array-length v1, v0

    .line 46
    .local v1, "computedMsgLength":I
    const/4 v2, 0x0

    invoke-static {v0, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    return-void
.end method

.method public getDigestSize()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lnet/veritran/android/implementation/MD5DigestImplementation;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lnet/veritran/android/implementation/MD5DigestImplementation;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest could not be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lnet/veritran/android/implementation/MD5DigestImplementation;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lnet/veritran/android/implementation/MD5DigestImplementation;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest could not be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
