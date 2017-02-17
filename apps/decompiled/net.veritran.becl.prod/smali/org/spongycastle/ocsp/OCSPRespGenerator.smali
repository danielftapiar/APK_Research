.class public Lorg/spongycastle/ocsp/OCSPRespGenerator;
.super Ljava/lang/Object;
.source "OCSPRespGenerator.java"


# static fields
.field public static final INTERNAL_ERROR:I = 0x2

.field public static final MALFORMED_REQUEST:I = 0x1

.field public static final SIG_REQUIRED:I = 0x5

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_LATER:I = 0x3

.field public static final UNAUTHORIZED:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(ILjava/lang/Object;)Lorg/spongycastle/ocsp/OCSPResp;
    .locals 8
    .param p1, "status"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 29
    new-instance v4, Lorg/spongycastle/ocsp/OCSPResp;

    new-instance v5, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    new-instance v6, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v6, p1}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;Lorg/spongycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/ocsp/OCSPResp;-><init>(Lorg/spongycastle/asn1/ocsp/OCSPResponse;)V

    .line 48
    :goto_0
    return-object v4

    .line 31
    :cond_0
    instance-of v4, p2, Lorg/spongycastle/ocsp/BasicOCSPResp;

    if-eqz v4, :cond_1

    move-object v2, p2

    .line 33
    check-cast v2, Lorg/spongycastle/ocsp/BasicOCSPResp;

    .line 38
    .local v2, "r":Lorg/spongycastle/ocsp/BasicOCSPResp;
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v2}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v1, "octs":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v3, Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    sget-object v4, Lorg/spongycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 48
    .local v3, "rb":Lorg/spongycastle/asn1/ocsp/ResponseBytes;
    new-instance v4, Lorg/spongycastle/ocsp/OCSPResp;

    new-instance v5, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    new-instance v6, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v6, p1}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    invoke-direct {v5, v6, v3}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;Lorg/spongycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/ocsp/OCSPResp;-><init>(Lorg/spongycastle/asn1/ocsp/OCSPResponse;)V

    goto :goto_0

    .line 40
    .end local v1    # "octs":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v3    # "rb":Lorg/spongycastle/asn1/ocsp/ResponseBytes;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lorg/spongycastle/ocsp/OCSPException;

    const-string v5, "can\'t encode object."

    invoke-direct {v4, v5, v0}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "r":Lorg/spongycastle/ocsp/BasicOCSPResp;
    :cond_1
    new-instance v4, Lorg/spongycastle/ocsp/OCSPException;

    const-string v5, "unknown response object"

    invoke-direct {v4, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
