.class public Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;
.super Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefPKCS12KeyStore3DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1571
    const/4 v0, 0x0

    sget-object v1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;-><init>(Ljava/security/Provider;Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObjectIdentifier;)V

    .line 1572
    return-void
.end method
