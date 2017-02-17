.class public Lorg/spongycastle/asn1/DERGeneralString;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DERGeneralString.java"

# interfaces
.implements Lorg/spongycastle/asn1/DERString;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "string"    # [B

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 40
    array-length v2, p1

    new-array v0, v2, [C

    .line 41
    .local v0, "cs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 43
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERGeneralString;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 13
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/DERGeneralString;

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/DERGeneralString;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 18
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERGeneralString;
    .locals 3
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    .line 28
    .local v0, "o":Lorg/spongycastle/asn1/DERObject;
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/spongycastle/asn1/DERGeneralString;

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/DERGeneralString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERGeneralString;

    move-result-object v1

    .line 34
    .end local v0    # "o":Lorg/spongycastle/asn1/DERObject;
    :goto_0
    return-object v1

    .restart local v0    # "o":Lorg/spongycastle/asn1/DERObject;
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERGeneralString;

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    .end local v0    # "o":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/DERObject;)Z
    .locals 3
    .param p1, "o"    # Lorg/spongycastle/asn1/DERObject;

    .prologue
    .line 87
    instance-of v1, p1, Lorg/spongycastle/asn1/DERGeneralString;

    if-nez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 92
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 91
    check-cast v0, Lorg/spongycastle/asn1/DERGeneralString;

    .line 92
    .local v0, "s":Lorg/spongycastle/asn1/DERGeneralString;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/DEROutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/spongycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERGeneralString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 78
    return-void
.end method

.method public getOctets()[B
    .locals 4

    .prologue
    .line 65
    iget-object v3, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 66
    .local v1, "cs":[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 67
    .local v0, "bs":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 69
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    return-object v0
.end method
