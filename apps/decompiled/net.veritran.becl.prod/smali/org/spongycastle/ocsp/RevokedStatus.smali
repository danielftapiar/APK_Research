.class public Lorg/spongycastle/ocsp/RevokedStatus;
.super Ljava/lang/Object;
.source "RevokedStatus.java"

# interfaces
.implements Lorg/spongycastle/ocsp/CertificateStatus;


# instance fields
.field info:Lorg/spongycastle/asn1/ocsp/RevokedInfo;


# direct methods
.method public constructor <init>(Ljava/util/Date;I)V
    .locals 3
    .param p1, "revocationDate"    # Ljava/util/Date;
    .param p2, "reason"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    new-instance v1, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v2, Lorg/spongycastle/asn1/x509/CRLReason;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/x509/CRLReason;)V

    iput-object v0, p0, Lorg/spongycastle/ocsp/RevokedStatus;->info:Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/RevokedInfo;)V
    .locals 0
    .param p1, "info"    # Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/ocsp/RevokedStatus;->info:Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public getRevocationReason()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/ocsp/RevokedStatus;->info:Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get a reason where none is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/ocsp/RevokedStatus;->info:Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/ocsp/RevokedStatus;->info:Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/RevokedInfo;->getRevocationTime()Lorg/spongycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasRevocationReason()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/spongycastle/ocsp/RevokedStatus;->info:Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
