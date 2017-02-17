.class public interface abstract Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract generateBigInteger(Ljava/lang/String;I)Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;
.end method

.method public abstract generateBiginteger()Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;
.end method

.method public abstract getAESAdapter()Lnet/veritran/vtuserapplication/utils/security/AESAdapterInterface;
.end method

.method public abstract getDiffieHellmanImplementation()Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;
.end method

.method public abstract getMD5Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
.end method

.method public abstract getSHA1Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
.end method

.method public abstract getSHA256Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
.end method

.method public abstract getSHA512Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
.end method
