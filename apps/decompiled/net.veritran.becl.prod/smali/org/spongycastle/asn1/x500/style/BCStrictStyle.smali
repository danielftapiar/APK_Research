.class public Lorg/spongycastle/asn1/x500/style/BCStrictStyle;
.super Lorg/spongycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/spongycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    .locals 6
    .param p1, "name1"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v1

    .line 16
    .local v1, "rdns1":[Lorg/spongycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    .line 18
    .local v2, "rdns2":[Lorg/spongycastle/asn1/x500/RDN;
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v3

    .line 23
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-eq v0, v4, :cond_2

    .line 25
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-virtual {p0, v4, v5}, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
