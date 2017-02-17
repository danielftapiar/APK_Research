.class abstract Lorg/spongycastle/openssl/PEMReader$KeyPairParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "KeyPairParser"
.end annotation


# instance fields
.field protected provider:Ljava/lang/String;

.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method protected readKeyPair(Lorg/spongycastle/util/io/pem/PemObject;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 13
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v10, 0x0

    .line 193
    .local v10, "isEncrypted":Z
    const/4 v6, 0x0

    .line 194
    .local v6, "dekInfo":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v9

    .line 196
    .local v9, "headers":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/util/io/pem/PemHeader;

    .line 200
    .local v8, "hdr":Lorg/spongycastle/util/io/pem/PemHeader;
    invoke-virtual {v8}, Lorg/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proc-Type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lorg/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4,ENCRYPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const/4 v10, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v8}, Lorg/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEK-Info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v8}, Lorg/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 213
    .end local v8    # "hdr":Lorg/spongycastle/util/io/pem/PemHeader;
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    .line 215
    .local v2, "keyBytes":[B
    if-eqz v10, :cond_5

    .line 217
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    # getter for: Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;
    invoke-static {v0}, Lorg/spongycastle/openssl/PEMReader;->access$400(Lorg/spongycastle/openssl/PEMReader;)Lorg/spongycastle/openssl/PasswordFinder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 219
    new-instance v0, Lorg/spongycastle/openssl/PasswordException;

    const-string v1, "No password finder specified, but a password is required"

    invoke-direct {v0, v1}, Lorg/spongycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    # getter for: Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;
    invoke-static {v0}, Lorg/spongycastle/openssl/PEMReader;->access$400(Lorg/spongycastle/openssl/PEMReader;)Lorg/spongycastle/openssl/PasswordFinder;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v3

    .line 224
    .local v3, "password":[C
    if-nez v3, :cond_4

    .line 226
    new-instance v0, Lorg/spongycastle/openssl/PasswordException;

    const-string v1, "Password is null, but a password is required"

    invoke-direct {v0, v1}, Lorg/spongycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_4
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v12, v6, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v12, "tknz":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "dekAlgName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 233
    .local v5, "iv":[B
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/openssl/PEMUtilities;->crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B

    move-result-object v2

    .line 238
    .end local v3    # "password":[C
    .end local v4    # "dekAlgName":Ljava/lang/String;
    .end local v5    # "iv":[B
    .end local v12    # "tknz":Ljava/util/StringTokenizer;
    :cond_5
    :try_start_0
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 240
    :catch_0
    move-exception v7

    .line 242
    .local v7, "e":Ljava/io/IOException;
    if-eqz v10, :cond_6

    .line 244
    new-instance v0, Lorg/spongycastle/openssl/PEMException;

    const-string v1, "exception decoding - please check password and data."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 248
    :cond_6
    new-instance v0, Lorg/spongycastle/openssl/PEMException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 251
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 253
    .local v7, "e":Ljava/lang/ClassCastException;
    if-eqz v10, :cond_7

    .line 255
    new-instance v0, Lorg/spongycastle/openssl/PEMException;

    const-string v1, "exception decoding - please check password and data."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 259
    :cond_7
    new-instance v0, Lorg/spongycastle/openssl/PEMException;

    invoke-virtual {v7}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
