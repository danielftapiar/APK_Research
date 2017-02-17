.class public Lnet/veritran/android/implementation/AESAdapterImplementation;
.super Ljava/lang/Object;
.source "AESAdapterImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/AESAdapterInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "AESAdapterImplementation"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    const-string v1, "AES/CBC/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "AESAdapterImplementation"

    const-string v2, "Catched exception empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 35
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v1, "AESAdapterImplementation"

    const-string v2, "Catched exception empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public process([B[B[BZ)[B
    .locals 10
    .param p1, "data"    # [B
    .param p2, "iv"    # [B
    .param p3, "key"    # [B
    .param p4, "encrypt"    # Z

    .prologue
    .line 41
    const/4 v8, 0x0

    .line 43
    .local v8, "result":[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v9, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    .local v9, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 47
    .local v7, "initializationVector":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v3, 0x10

    .line 50
    .local v3, "BLOCK_SIZE":I
    if-eqz p4, :cond_1

    .line 51
    :try_start_0
    iget-object v0, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    array-length v0, p1

    new-array v4, v0, [B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 56
    .local v4, "out":[B
    const/4 v2, 0x0

    .line 57
    .local v2, "inx":I
    const/4 v2, 0x0

    :goto_0
    :try_start_1
    array-length v0, p1

    if-ge v2, v0, :cond_0

    .line 60
    iget-object v0, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 57
    add-int/2addr v2, v3

    goto :goto_0

    .line 67
    :cond_0
    move-object v8, v4

    .line 95
    .end local v2    # "inx":I
    .end local v4    # "out":[B
    :goto_1
    return-object v8

    .line 71
    .restart local v2    # "inx":I
    .restart local v4    # "out":[B
    :catch_0
    move-exception v6

    .line 73
    .local v6, "e":Ljavax/crypto/ShortBufferException;
    :try_start_2
    const-string v0, "ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encriptando "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljavax/crypto/ShortBufferException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 89
    .end local v2    # "inx":I
    .end local v4    # "out":[B
    .end local v6    # "e":Ljavax/crypto/ShortBufferException;
    :catch_1
    move-exception v6

    .line 90
    .local v6, "e":Ljava/security/InvalidKeyException;
    const-string v0, "AESAdapterImplementation"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v6    # "e":Ljava/security/InvalidKeyException;
    :cond_1
    :try_start_3
    iget-object v0, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_3

    .line 81
    :try_start_4
    iget-object v0, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v8

    goto :goto_1

    .line 82
    :catch_2
    move-exception v6

    .line 83
    .local v6, "e":Ljavax/crypto/IllegalBlockSizeException;
    :try_start_5
    const-string v0, "AESAdapterImplementation"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 91
    .end local v6    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v6

    .line 92
    .local v6, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v0, "AESAdapterImplementation"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v6    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v6

    .line 85
    .local v6, "e":Ljavax/crypto/BadPaddingException;
    :try_start_6
    const-string v0, "AESAdapterImplementation"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1
.end method

.method public processOld([B[B[BZ)[B
    .locals 7
    .param p1, "data"    # [B
    .param p2, "iv"    # [B
    .param p3, "key"    # [B
    .param p4, "encrypt"    # Z

    .prologue
    .line 99
    const/4 v3, 0x0

    .line 101
    .local v3, "result":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 108
    .local v1, "initializationVector":Ljavax/crypto/spec/IvParameterSpec;
    if-eqz p4, :cond_0

    .line 109
    :try_start_0
    iget-object v5, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 110
    array-length v5, p1

    new-array v2, v5, [B

    .line 113
    .local v2, "out":[B
    iget-object v5, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 141
    .end local v2    # "out":[B
    :goto_0
    return-object v3

    .line 121
    :cond_0
    iget-object v5, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 123
    :try_start_1
    iget-object v5, p0, Lnet/veritran/android/implementation/AESAdapterImplementation;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    :try_start_2
    const-string v5, "AESAdapterImplementation"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v5, "AESAdapterImplementation"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 127
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    :try_start_3
    const-string v5, "AESAdapterImplementation"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v0

    .line 134
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v5, "AESAdapterImplementation"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v0

    .line 136
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v5, "AESAdapterImplementation"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v0

    .line 138
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    const-string v5, "AESAdapterImplementation"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
