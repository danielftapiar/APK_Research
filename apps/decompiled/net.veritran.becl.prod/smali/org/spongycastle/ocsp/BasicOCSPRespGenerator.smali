.class public Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;
.super Ljava/lang/Object;
.source "BasicOCSPRespGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private responderID:Lorg/spongycastle/ocsp/RespID;

.field private responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 123
    new-instance v0, Lorg/spongycastle/ocsp/RespID;

    invoke-direct {v0, p1}, Lorg/spongycastle/ocsp/RespID;-><init>(Ljava/security/PublicKey;)V

    iput-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/spongycastle/ocsp/RespID;

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/ocsp/RespID;)V
    .locals 1
    .param p1, "responderID"    # Lorg/spongycastle/ocsp/RespID;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 113
    iput-object p1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/spongycastle/ocsp/RespID;

    .line 114
    return-void
.end method

.method private generateResponse(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/BasicOCSPResp;
    .locals 17
    .param p1, "signatureName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "producedAt"    # Ljava/util/Date;
    .param p5, "provider"    # Ljava/lang/String;
    .param p6, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 215
    .local v6, "it":Ljava/util/Iterator;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/ocsp/OCSPUtil;->getAlgorithmOID(Ljava/lang/String;)Lorg/spongycastle/asn1/DERObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 222
    .local v10, "signingAlgorithm":Lorg/spongycastle/asn1/DERObjectIdentifier;
    new-instance v7, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 224
    .local v7, "responses":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 228
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    invoke-virtual {v13}, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->toResponse()Lorg/spongycastle/asn1/ocsp/SingleResponse;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v4

    .line 232
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Lorg/spongycastle/ocsp/OCSPException;

    const-string v14, "exception creating Request"

    invoke-direct {v13, v14, v4}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    .line 217
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "responses":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v10    # "signingAlgorithm":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :catch_1
    move-exception v4

    .line 219
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "unknown signing algorithm specified"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 236
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "responses":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .restart local v10    # "signingAlgorithm":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_0
    new-instance v11, Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/spongycastle/ocsp/RespID;

    invoke-virtual {v13}, Lorg/spongycastle/ocsp/RespID;->toASN1Object()Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object v13

    new-instance v14, Lorg/spongycastle/asn1/DERGeneralizedTime;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v15, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v15, v7}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;-><init>(Lorg/spongycastle/asn1/ocsp/ResponderID;Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    .line 238
    .local v11, "tbsResp":Lorg/spongycastle/asn1/ocsp/ResponseData;
    const/4 v8, 0x0

    .line 242
    .local v8, "sig":Ljava/security/Signature;
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/spongycastle/ocsp/OCSPUtil;->createSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 243
    if-eqz p6, :cond_1

    .line 245
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v8, v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3

    .line 262
    :goto_1
    const/4 v2, 0x0

    .line 266
    .local v2, "bitSig":Lorg/spongycastle/asn1/DERBitString;
    :try_start_3
    const-string v13, "DER"

    invoke-virtual {v11, v13}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/security/Signature;->update([B)V

    .line 268
    new-instance v2, Lorg/spongycastle/asn1/DERBitString;

    .end local v2    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    invoke-virtual {v8}, Ljava/security/Signature;->sign()[B

    move-result-object v13

    invoke-direct {v2, v13}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 275
    .restart local v2    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    invoke-static {v10}, Lorg/spongycastle/ocsp/OCSPUtil;->getSigAlgID(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    .line 277
    .local v9, "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v3, 0x0

    .line 278
    .local v3, "chainSeq":Lorg/spongycastle/asn1/DERSequence;
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v13, v0

    if-lez v13, :cond_3

    .line 280
    new-instance v12, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 283
    .local v12, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_4
    move-object/from16 v0, p3

    array-length v13, v0

    if-eq v5, v13, :cond_2

    .line 285
    new-instance v14, Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    aget-object v13, p3, v5

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v13

    invoke-static {v13}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v14, v13}, Lorg/spongycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v12, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_6

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 249
    .end local v2    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    .end local v3    # "chainSeq":Lorg/spongycastle/asn1/DERSequence;
    .end local v5    # "i":I
    .end local v9    # "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v12    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_1
    :try_start_5
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 252
    :catch_2
    move-exception v4

    .line 255
    .local v4, "e":Ljava/security/NoSuchProviderException;
    throw v4

    .line 257
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_3
    move-exception v4

    .line 259
    .local v4, "e":Ljava/security/GeneralSecurityException;
    new-instance v13, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception creating signature: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v4}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    .line 270
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :catch_4
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception processing TBSRequest: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v4}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    .line 289
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    .restart local v3    # "chainSeq":Lorg/spongycastle/asn1/DERSequence;
    .restart local v5    # "i":I
    .restart local v9    # "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v12    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :catch_5
    move-exception v4

    .line 291
    .local v4, "e":Ljava/io/IOException;
    new-instance v13, Lorg/spongycastle/ocsp/OCSPException;

    const-string v14, "error processing certs"

    invoke-direct {v13, v14, v4}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    .line 293
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 295
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v13, Lorg/spongycastle/ocsp/OCSPException;

    const-string v14, "error encoding certs"

    invoke-direct {v13, v14, v4}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    .line 298
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_2
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    .end local v3    # "chainSeq":Lorg/spongycastle/asn1/DERSequence;
    invoke-direct {v3, v12}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 301
    .end local v5    # "i":I
    .end local v12    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "chainSeq":Lorg/spongycastle/asn1/DERSequence;
    :cond_3
    new-instance v13, Lorg/spongycastle/ocsp/BasicOCSPResp;

    new-instance v14, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-direct {v14, v11, v9, v2, v3}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/spongycastle/asn1/ocsp/ResponseData;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v13, v14}, Lorg/spongycastle/ocsp/BasicOCSPResp;-><init>(Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object v13
.end method


# virtual methods
.method public addResponse(Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;)V
    .locals 8
    .param p1, "certID"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/spongycastle/ocsp/CertificateStatus;

    .prologue
    const/4 v5, 0x0

    .line 136
    iget-object v7, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public addResponse(Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 8
    .param p1, "certID"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/spongycastle/ocsp/CertificateStatus;
    .param p3, "thisUpdate"    # Ljava/util/Date;
    .param p4, "nextUpdate"    # Ljava/util/Date;
    .param p5, "singleExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 187
    iget-object v7, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public addResponse(Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Ljava/util/Date;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 8
    .param p1, "certID"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/spongycastle/ocsp/CertificateStatus;
    .param p3, "nextUpdate"    # Ljava/util/Date;
    .param p4, "singleExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 168
    iget-object v7, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public addResponse(Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 8
    .param p1, "certID"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/spongycastle/ocsp/CertificateStatus;
    .param p3, "singleExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 151
    iget-object v7, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;)Lorg/spongycastle/ocsp/BasicOCSPResp;
    .locals 7
    .param p1, "signingAlgorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "thisUpdate"    # Ljava/util/Date;
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/BasicOCSPResp;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/BasicOCSPResp;
    .locals 2
    .param p1, "signingAlgorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "producedAt"    # Ljava/util/Date;
    .param p5, "provider"    # Ljava/lang/String;
    .param p6, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no signing algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    invoke-direct/range {p0 .. p6}, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->generateResponse(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/BasicOCSPResp;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lorg/spongycastle/ocsp/OCSPUtil;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setResponseExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0
    .param p1, "responseExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 199
    return-void
.end method
