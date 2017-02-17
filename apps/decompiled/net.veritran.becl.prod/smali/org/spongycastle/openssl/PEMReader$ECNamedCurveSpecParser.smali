.class Lorg/spongycastle/openssl/PEMReader$ECNamedCurveSpecParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ECNamedCurveSpecParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method private constructor <init>(Lorg/spongycastle/openssl/PEMReader;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$ECNamedCurveSpecParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/openssl/PEMReader;Lorg/spongycastle/openssl/PEMReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/openssl/PEMReader;
    .param p2, "x1"    # Lorg/spongycastle/openssl/PEMReader$1;

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lorg/spongycastle/openssl/PEMReader$ECNamedCurveSpecParser;-><init>(Lorg/spongycastle/openssl/PEMReader;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 642
    .local v1, "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v2

    .line 644
    .local v2, "params":Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;
    if-nez v2, :cond_0

    .line 646
    new-instance v3, Ljava/io/IOException;

    const-string v4, "object ID not found in EC curve table"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 651
    .end local v1    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .end local v2    # "params":Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 655
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/openssl/PEMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception extracting EC named curve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .restart local v2    # "params":Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;
    :cond_0
    return-object v2
.end method
