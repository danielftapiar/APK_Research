.class public Lorg/spongycastle/ocsp/OCSPReqGenerator;
.super Ljava/lang/Object;
.source "OCSPReqGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

.field private requestorName:Lorg/spongycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 39
    iput-object v1, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 41
    return-void
.end method

.method private generateRequest(Lorg/spongycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/OCSPReq;
    .locals 17
    .param p1, "signingAlgorithm"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 125
    .local v7, "it":Ljava/util/Iterator;
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 127
    .local v8, "requests":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 131
    :try_start_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;

    invoke-virtual {v14}, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;->toRequest()Lorg/spongycastle/asn1/ocsp/Request;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/spongycastle/ocsp/OCSPException;

    const-string v15, "exception creating Request"

    invoke-direct {v14, v15, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 139
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v12, Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v15, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v15, v8}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v14, v15, v0}, Lorg/spongycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    .line 141
    .local v12, "tbsReq":Lorg/spongycastle/asn1/ocsp/TBSRequest;
    const/4 v9, 0x0

    .line 142
    .local v9, "sig":Ljava/security/Signature;
    const/4 v11, 0x0

    .line 144
    .local v11, "signature":Lorg/spongycastle/asn1/ocsp/Signature;
    if-eqz p1, :cond_4

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

    if-nez v14, :cond_1

    .line 148
    new-instance v14, Lorg/spongycastle/ocsp/OCSPException;

    const-string v15, "requestorName must be specified if request is signed."

    invoke-direct {v14, v15}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 153
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v14, v0}, Lorg/spongycastle/ocsp/OCSPUtil;->createSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 154
    if-eqz p5, :cond_2

    .line 156
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v9, v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 173
    :goto_1
    const/4 v4, 0x0

    .line 177
    .local v4, "bitSig":Lorg/spongycastle/asn1/DERBitString;
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v3, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 180
    .local v2, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    invoke-virtual {v2, v12}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/security/Signature;->update([B)V

    .line 184
    new-instance v4, Lorg/spongycastle/asn1/DERBitString;

    .end local v4    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    invoke-virtual {v9}, Ljava/security/Signature;->sign()[B

    move-result-object v14

    invoke-direct {v4, v14}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 191
    .restart local v4    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    new-instance v10, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v14, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v14}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 193
    .local v10, "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    array-length v14, v0

    if-lez v14, :cond_5

    .line 195
    new-instance v13, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 198
    .local v13, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    :try_start_3
    move-object/from16 v0, p3

    array-length v14, v0

    if-eq v6, v14, :cond_3

    .line 200
    new-instance v15, Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    aget-object v14, p3, v6

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v14

    invoke-static {v14}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v15, v14}, Lorg/spongycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v13, v15}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_5

    .line 198
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 160
    .end local v2    # "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    .end local v6    # "i":I
    .end local v10    # "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v13    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_2
    :try_start_4
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 163
    :catch_1
    move-exception v5

    .line 166
    .local v5, "e":Ljava/security/NoSuchProviderException;
    throw v5

    .line 168
    .end local v5    # "e":Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v5

    .line 170
    .local v5, "e":Ljava/security/GeneralSecurityException;
    new-instance v14, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exception creating signature: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 186
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v5

    .line 188
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exception processing TBSRequest: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 204
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    .restart local v6    # "i":I
    .restart local v10    # "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v13    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :catch_4
    move-exception v5

    .line 206
    .local v5, "e":Ljava/io/IOException;
    new-instance v14, Lorg/spongycastle/ocsp/OCSPException;

    const-string v15, "error processing certs"

    invoke-direct {v14, v15, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 208
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 210
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v14, Lorg/spongycastle/ocsp/OCSPException;

    const-string v15, "error encoding certs"

    invoke-direct {v14, v15, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 213
    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_3
    new-instance v11, Lorg/spongycastle/asn1/ocsp/Signature;

    .end local v11    # "signature":Lorg/spongycastle/asn1/ocsp/Signature;
    new-instance v14, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v14, v13}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v11, v10, v4, v14}, Lorg/spongycastle/asn1/ocsp/Signature;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 221
    .end local v2    # "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    .end local v6    # "i":I
    .end local v10    # "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v13    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "signature":Lorg/spongycastle/asn1/ocsp/Signature;
    :cond_4
    :goto_3
    new-instance v14, Lorg/spongycastle/ocsp/OCSPReq;

    new-instance v15, Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v15, v12, v11}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/spongycastle/asn1/ocsp/TBSRequest;Lorg/spongycastle/asn1/ocsp/Signature;)V

    invoke-direct {v14, v15}, Lorg/spongycastle/ocsp/OCSPReq;-><init>(Lorg/spongycastle/asn1/ocsp/OCSPRequest;)V

    return-object v14

    .line 217
    .restart local v2    # "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bitSig":Lorg/spongycastle/asn1/DERBitString;
    .restart local v10    # "sigAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :cond_5
    new-instance v11, Lorg/spongycastle/asn1/ocsp/Signature;

    .end local v11    # "signature":Lorg/spongycastle/asn1/ocsp/Signature;
    invoke-direct {v11, v10, v4}, Lorg/spongycastle/asn1/ocsp/Signature;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;)V

    .restart local v11    # "signature":Lorg/spongycastle/asn1/ocsp/Signature;
    goto :goto_3
.end method


# virtual methods
.method public addRequest(Lorg/spongycastle/ocsp/CertificateID;)V
    .locals 3
    .param p1, "certId"    # Lorg/spongycastle/ocsp/CertificateID;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;-><init>(Lorg/spongycastle/ocsp/OCSPReqGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public addRequest(Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 2
    .param p1, "certId"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p2, "singleRequestExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;

    invoke-direct {v1, p0, p1, p2}, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;-><init>(Lorg/spongycastle/ocsp/OCSPReqGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public generate()Lorg/spongycastle/ocsp/OCSPReq;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/ocsp/OCSPReqGenerator;->generateRequest(Lorg/spongycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/OCSPReq;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 237
    :catch_0
    move-exception v6

    .line 242
    .local v6, "e":Ljava/security/NoSuchProviderException;
    new-instance v0, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no provider! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/spongycastle/ocsp/OCSPReq;
    .locals 6
    .param p1, "signingAlgorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/ocsp/OCSPReqGenerator;->generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/OCSPReq;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/OCSPReq;
    .locals 7
    .param p1, "signingAlgorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "no signing algorithm specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/ocsp/OCSPUtil;->getAlgorithmOID(Ljava/lang/String;)Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    .local v1, "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 273
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/ocsp/OCSPReqGenerator;->generateRequest(Lorg/spongycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/ocsp/OCSPReq;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 275
    .end local v1    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :catch_0
    move-exception v6

    .line 277
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown signing algorithm specified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lorg/spongycastle/ocsp/OCSPUtil;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setRequestExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0
    .param p1, "requestExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 113
    return-void
.end method

.method public setRequestorName(Ljavax/security/auth/x500/X500Principal;)V
    .locals 5
    .param p1, "requestorName"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 95
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x4

    new-instance v3, Lorg/spongycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot encode principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRequestorName(Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "requestorName"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 107
    return-void
.end method
