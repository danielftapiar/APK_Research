.class public Lorg/spongycastle/voms/VOMSAttribute;
.super Ljava/lang/Object;
.source "VOMSAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/voms/VOMSAttribute$FQAN;
    }
.end annotation


# static fields
.field public static final VOMS_ATTR_OID:Ljava/lang/String; = "1.3.6.1.4.1.8005.100.100.4"


# instance fields
.field private myAC:Lorg/spongycastle/x509/X509AttributeCertificate;

.field private myFQANs:Ljava/util/Vector;

.field private myHostPort:Ljava/lang/String;

.field private myStringList:Ljava/util/Vector;

.field private myVo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/spongycastle/x509/X509AttributeCertificate;)V
    .locals 15
    .param p1, "ac"    # Lorg/spongycastle/x509/X509AttributeCertificate;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    iput-object v12, p0, Lorg/spongycastle/voms/VOMSAttribute;->myStringList:Ljava/util/Vector;

    .line 31
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    iput-object v12, p0, Lorg/spongycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/Vector;

    .line 41
    if-nez p1, :cond_0

    .line 43
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "VOMSAttribute: AttributeCertificate is NULL"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 46
    :cond_0
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/spongycastle/voms/VOMSAttribute;->myAC:Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 48
    const-string v12, "1.3.6.1.4.1.8005.100.100.4"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/spongycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v9

    .line 50
    .local v9, "l":[Lorg/spongycastle/x509/X509Attribute;
    if-nez v9, :cond_2

    .line 102
    :cond_1
    return-void

    .line 57
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    array-length v12, v9

    if-eq v5, v12, :cond_1

    .line 59
    new-instance v1, Lorg/spongycastle/asn1/x509/IetfAttrSyntax;

    aget-object v12, v9, v5

    invoke-virtual {v12}, Lorg/spongycastle/x509/X509Attribute;->getValues()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    check-cast v12, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v12}, Lorg/spongycastle/asn1/x509/IetfAttrSyntax;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 62
    .local v1, "attr":Lorg/spongycastle/asn1/x509/IetfAttrSyntax;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IetfAttrSyntax;->getPolicyAuthority()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/GeneralNames;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "url":Ljava/lang/String;
    const-string v12, "://"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 65
    .local v6, "idx":I
    if-ltz v6, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v6, v12, :cond_4

    .line 67
    :cond_3
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad encoding of VOMS policyAuthority : ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v1    # "attr":Lorg/spongycastle/asn1/x509/IetfAttrSyntax;
    .end local v6    # "idx":I
    .end local v10    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 95
    .local v7, "ie":Ljava/lang/IllegalArgumentException;
    throw v7

    .line 70
    .end local v7    # "ie":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "attr":Lorg/spongycastle/asn1/x509/IetfAttrSyntax;
    .restart local v6    # "idx":I
    .restart local v10    # "url":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v10, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    .line 71
    add-int/lit8 v12, v6, 0x3

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    .line 73
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IetfAttrSyntax;->getValueType()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    .line 75
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VOMS attribute values are not encoded as octet strings, policyAuthority = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .end local v1    # "attr":Lorg/spongycastle/asn1/x509/IetfAttrSyntax;
    .end local v6    # "idx":I
    .end local v10    # "url":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Badly encoded VOMS extension in AC issued by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "attr":Lorg/spongycastle/asn1/x509/IetfAttrSyntax;
    .restart local v6    # "idx":I
    .restart local v10    # "url":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IetfAttrSyntax;->getValues()[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v0, v12

    check-cast v0, [Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v11, v0

    .line 80
    .local v11, "values":[Lorg/spongycastle/asn1/ASN1OctetString;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v12, v11

    if-eq v8, v12, :cond_7

    .line 82
    new-instance v4, Ljava/lang/String;

    aget-object v12, v11, v8

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v4, "fqan":Ljava/lang/String;
    new-instance v3, Lorg/spongycastle/voms/VOMSAttribute$FQAN;

    invoke-direct {v3, p0, v4}, Lorg/spongycastle/voms/VOMSAttribute$FQAN;-><init>(Lorg/spongycastle/voms/VOMSAttribute;Ljava/lang/String;)V

    .line 85
    .local v3, "f":Lorg/spongycastle/voms/VOMSAttribute$FQAN;
    iget-object v12, p0, Lorg/spongycastle/voms/VOMSAttribute;->myStringList:Ljava/util/Vector;

    invoke-virtual {v12, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 87
    iget-object v12, p0, Lorg/spongycastle/voms/VOMSAttribute;->myStringList:Ljava/util/Vector;

    invoke-virtual {v12, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v12, p0, Lorg/spongycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/Vector;

    invoke-virtual {v12, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 57
    .end local v3    # "f":Lorg/spongycastle/voms/VOMSAttribute$FQAN;
    .end local v4    # "fqan":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getAC()Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/voms/VOMSAttribute;->myAC:Lorg/spongycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getFullyQualifiedAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/voms/VOMSAttribute;->myStringList:Ljava/util/Vector;

    return-object v0
.end method

.method public getHostPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/spongycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    return-object v0
.end method

.method public getListOfFQAN()Ljava/util/List;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/spongycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/Vector;

    return-object v0
.end method

.method public getVO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/spongycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VO      :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HostPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FQANs   :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
