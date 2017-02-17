.class public Lnet/veritran/android/implementation/SecurityLibraryImplementation;
.super Ljava/lang/Object;
.source "SecurityLibraryImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public generateBigInteger(Ljava/lang/String;I)Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 25
    new-instance v0, Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    invoke-direct {v0, p1, p2}, Lnet/veritran/android/implementation/VTBigIntegerImplementation;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public generateBiginteger()Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    const-string v1, "1234567890"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/VTBigIntegerImplementation;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getAESAdapter()Lnet/veritran/vtuserapplication/utils/security/AESAdapterInterface;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lnet/veritran/android/implementation/AESAdapterImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/AESAdapterImplementation;-><init>()V

    return-object v0
.end method

.method public getDiffieHellmanImplementation()Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMD5Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lnet/veritran/android/implementation/MD5DigestImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/MD5DigestImplementation;-><init>()V

    return-object v0
.end method

.method public getSHA1Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lnet/veritran/android/implementation/SHA1DigestImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/SHA1DigestImplementation;-><init>()V

    return-object v0
.end method

.method public getSHA256Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lnet/veritran/android/implementation/SHA256DigestImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/SHA256DigestImplementation;-><init>()V

    return-object v0
.end method

.method public getSHA512Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lnet/veritran/android/implementation/SHA512DigestImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/SHA512DigestImplementation;-><init>()V

    return-object v0
.end method