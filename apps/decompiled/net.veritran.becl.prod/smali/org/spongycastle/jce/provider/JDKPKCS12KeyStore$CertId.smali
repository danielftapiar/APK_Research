.class Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
.super Ljava/lang/Object;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertId"
.end annotation


# instance fields
.field id:[B

.field final synthetic this$0:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;


# direct methods
.method constructor <init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V
    .locals 1
    .param p2, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    # invokes: Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    invoke-static {p1, p2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->access$100(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    .line 125
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;[B)V
    .locals 0
    .param p2, "id"    # [B

    .prologue
    .line 129
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    .line 131
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 141
    if-ne p1, p0, :cond_0

    .line 143
    const/4 v1, 0x1

    .line 153
    :goto_0
    return v1

    .line 146
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    if-nez v1, :cond_1

    .line 148
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 151
    check-cast v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 153
    .local v0, "cId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    iget-object v2, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
