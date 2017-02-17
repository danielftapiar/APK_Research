.class public Lorg/spongycastle/jce/PKCS10CertificationRequest;
.super Lorg/spongycastle/asn1/pkcs/CertificationRequest;
.source "PKCS10CertificationRequest.java"


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static keyAlgorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static oids:Ljava/util/Hashtable;

.field private static params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 75
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    .line 76
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    .line 77
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    .line 78
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    .line 79
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    .line 83
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD2WITHRSAENCRYPTION"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.2"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD2WITHRSA"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.2"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD5WITHRSAENCRYPTION"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.4"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD5WITHRSA"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.4"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RSAWITHMD5"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.4"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSAENCRYPTION"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.5"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSA"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.5"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSAENCRYPTION"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSA"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSAENCRYPTION"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSA"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSAENCRYPTION"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSA"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSAENCRYPTION"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSA"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSAANDMGF1"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSAANDMGF1"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSAANDMGF1"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSAANDMGF1"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSAANDMGF1"

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RSAWITHSHA1"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.113549.1.1.5"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD128WITHRSAENCRYPTION"

    sget-object v7, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD128WITHRSA"

    sget-object v7, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD160WITHRSAENCRYPTION"

    sget-object v7, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD160WITHRSA"

    sget-object v7, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD256WITHRSAENCRYPTION"

    sget-object v7, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD256WITHRSA"

    sget-object v7, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHDSA"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.10040.4.3"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "DSAWITHSHA1"

    new-instance v7, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v8, "1.2.840.10040.4.3"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHDSA"

    sget-object v7, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHDSA"

    sget-object v7, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHDSA"

    sget-object v7, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHDSA"

    sget-object v7, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHECDSA"

    sget-object v7, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHECDSA"

    sget-object v7, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHECDSA"

    sget-object v7, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHECDSA"

    sget-object v7, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHECDSA"

    sget-object v7, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "ECDSAWITHSHA1"

    sget-object v7, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHGOST3410"

    sget-object v7, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3410WITHGOST3411"

    sget-object v7, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHECGOST3410"

    sget-object v7, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHECGOST3410-2001"

    sget-object v7, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHGOST3410-2001"

    sget-object v7, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v6, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "1.2.840.113549.1.1.5"

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v7, "SHA1WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA224WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA256WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA384WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA512WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "GOST3411WITHGOST3410"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "GOST3411WITHECGOST3410"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v6, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "1.2.840.113549.1.1.4"

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v7, "MD5WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v6, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "1.2.840.113549.1.1.2"

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v7, "MD2WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v6, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "1.2.840.10040.4.3"

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v7, "SHA1WITHDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA1WITHECDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA224WITHECDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA256WITHECDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA384WITHECDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA512WITHECDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA1WITHRSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA1WITHDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA224WITHDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA256WITHDSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "RSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "DSA"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 180
    .local v0, "sha1AlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSAANDMGF1"

    const/16 v7, 0x14

    invoke-static {v0, v7}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    invoke-direct {v1, v5, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 183
    .local v1, "sha224AlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSAANDMGF1"

    const/16 v7, 0x1c

    invoke-static {v1, v7}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    invoke-direct {v2, v5, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 186
    .local v2, "sha256AlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSAANDMGF1"

    const/16 v7, 0x20

    invoke-static {v2, v7}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v3, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    invoke-direct {v3, v5, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 189
    .local v3, "sha384AlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSAANDMGF1"

    const/16 v7, 0x30

    invoke-static {v3, v7}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v4, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 192
    .local v4, "sha512AlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSAANDMGF1"

    const/16 v7, 0x40

    invoke-static {v4, v7}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lorg/spongycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .locals 7
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p2}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v2

    sget-object v6, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/spongycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lorg/spongycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 7
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .param p6, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {p2}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/spongycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/spongycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .locals 7
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Lorg/spongycastle/asn1/x509/X509Name;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 247
    sget-object v6, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/spongycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/spongycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 8
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Lorg/spongycastle/asn1/x509/X509Name;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .param p6, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;-><init>()V

    .line 307
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "algorithmName":Ljava/lang/String;
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 310
    .local v4, "sigOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    if-nez v4, :cond_0

    .line 314
    :try_start_0
    new-instance v4, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .end local v4    # "sigOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .restart local v4    # "sigOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_0
    if-nez p2, :cond_1

    .line 324
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "subject must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    .end local v4    # "sigOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown signature type requested"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "sigOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_1
    if-nez p3, :cond_2

    .line 329
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "public key must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 332
    :cond_2
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 334
    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;)V

    iput-object v5, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 347
    :goto_0
    :try_start_1
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 348
    .local v2, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v5, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    new-instance v6, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v6, v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v5, p2, v6, p4}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/spongycastle/asn1/x509/X509Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/ASN1Set;)V

    iput-object v5, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 356
    if-nez p6, :cond_5

    .line 358
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 365
    .local v3, "sig":Ljava/security/Signature;
    :goto_1
    invoke-virtual {v3, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 369
    :try_start_2
    iget-object v5, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 376
    new-instance v5, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    iput-object v5, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigBits:Lorg/spongycastle/asn1/DERBitString;

    .line 377
    return-void

    .line 336
    .end local v2    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v3    # "sig":Ljava/security/Signature;
    :cond_3
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    new-instance v6, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/DEREncodable;

    invoke-direct {v6, v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    iput-object v6, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 342
    :cond_4
    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5, v4, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    iput-object v5, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 350
    :catch_1
    move-exception v1

    .line 352
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can\'t encode public key"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 362
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_5
    invoke-static {p1, p6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .restart local v3    # "sig":Ljava/security/Signature;
    goto :goto_1

    .line 371
    :catch_2
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception encoding TBS cert request - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "sequence"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 233
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 226
    invoke-static {p1}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->toDERSequence([B)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 227
    return-void
.end method

.method private static convertName(Ljavax/security/auth/x500/X500Principal;)Lorg/spongycastle/asn1/x509/X509Name;
    .locals 3
    .param p0, "name"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 255
    :try_start_0
    new-instance v1, Lorg/spongycastle/jce/X509Principal;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/X509Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t convert name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static creatPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 5
    .param p0, "hashAlgId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "saltSize"    # I

    .prologue
    .line 197
    new-instance v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    new-instance v3, Lorg/spongycastle/asn1/DERInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/DERInteger;)V

    return-object v0
.end method

.method private static getDigestAlgName(Lorg/spongycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "digestAlgOID"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 589
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "MD5"

    .line 631
    :goto_0
    return-object v0

    .line 593
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const-string v0, "SHA1"

    goto :goto_0

    .line 597
    :cond_1
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    const-string v0, "SHA224"

    goto :goto_0

    .line 601
    :cond_2
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    const-string v0, "SHA256"

    goto :goto_0

    .line 605
    :cond_3
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    const-string v0, "SHA384"

    goto :goto_0

    .line 609
    :cond_4
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 611
    const-string v0, "SHA512"

    goto :goto_0

    .line 613
    :cond_5
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 615
    const-string v0, "RIPEMD128"

    goto :goto_0

    .line 617
    :cond_6
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 619
    const-string v0, "RIPEMD160"

    goto :goto_0

    .line 621
    :cond_7
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 623
    const-string v0, "RIPEMD256"

    goto :goto_0

    .line 625
    :cond_8
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 627
    const-string v0, "GOST3411"

    goto :goto_0

    .line 631
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getSignatureName(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    .line 574
    .local v0, "params":Lorg/spongycastle/asn1/DEREncodable;
    if-eqz v0, :cond_0

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/DERNull;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    .line 579
    .local v1, "rsaParams":Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->getDigestAlgName(Lorg/spongycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "withRSAandMGF1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    .end local v1    # "rsaParams":Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setSignatureParameters(Ljava/security/Signature;Lorg/spongycastle/asn1/DEREncodable;)V
    .locals 5
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "params"    # Lorg/spongycastle/asn1/DEREncodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 542
    if-eqz p2, :cond_0

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v2, p2}, Lorg/spongycastle/asn1/DERNull;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 548
    .local v1, "sigParams":Ljava/security/AlgorithmParameters;
    :try_start_0
    invoke-interface {p2}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MGF1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    :try_start_1
    const-class v2, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 567
    .end local v1    # "sigParams":Ljava/security/AlgorithmParameters;
    :cond_0
    return-void

    .line 550
    .restart local v1    # "sigParams":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException decoding parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 561
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 563
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception extracting parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static toDERSequence([B)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 209
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 211
    .local v0, "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 213
    .end local v0    # "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "badly encoded request"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    .prologue
    .line 529
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v5, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 395
    .local v3, "subjectPKInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v5, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v5, v3}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 396
    .local v4, "xspec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 402
    .local v1, "keyAlg":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    if-nez p1, :cond_0

    .line 404
    :try_start_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 426
    :goto_0
    return-object v5

    .line 408
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 418
    sget-object v5, Lorg/spongycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 420
    .local v2, "keyAlgorithm":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 422
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {v2, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    goto :goto_0

    .line 430
    .end local v2    # "keyAlgorithm":Ljava/lang/String;
    :cond_2
    throw v0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 435
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "error decoding public key"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public verify()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->verify(Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 473
    if-nez p2, :cond_0

    .line 475
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v3}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->getSignatureName(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 506
    .local v1, "sig":Ljava/security/Signature;
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->setSignatureParameters(Ljava/security/Signature;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 508
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 512
    :try_start_1
    iget-object v3, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    iget-object v3, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigBits:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    return v3

    .line 479
    .end local v1    # "sig":Ljava/security/Signature;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v3}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->getSignatureName(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .restart local v1    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 482
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    iget-object v4, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 489
    sget-object v3, Lorg/spongycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    iget-object v4, p0, Lorg/spongycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    .local v2, "signatureAlgorithm":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 493
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 497
    .end local v1    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 502
    .end local v1    # "sig":Ljava/security/Signature;
    .end local v2    # "signatureAlgorithm":Ljava/lang/String;
    :cond_2
    throw v0

    .line 514
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception encoding TBS cert request - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
