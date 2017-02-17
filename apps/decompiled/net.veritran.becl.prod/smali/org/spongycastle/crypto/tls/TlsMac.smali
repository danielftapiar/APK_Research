.class public Lorg/spongycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;
.source "TlsMac.java"


# instance fields
.field protected mac:Lorg/spongycastle/crypto/macs/HMac;

.field protected seqNo:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;[BII)V
    .locals 4
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "key_block"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/macs/HMac;

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p2, p3, p4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 31
    .local v0, "param":Lorg/spongycastle/crypto/params/KeyParameter;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 32
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    .line 33
    return-void
.end method


# virtual methods
.method public calculateMac(S[BII)[B
    .locals 9
    .param p1, "type"    # S
    .param p2, "message"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    const/4 v8, 0x0

    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xd

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 59
    .local v0, "bosMac":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-wide v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    invoke-static {v4, v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(JLjava/io/OutputStream;)V

    .line 60
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 61
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Ljava/io/OutputStream;)V

    .line 62
    invoke-static {p4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 71
    .local v2, "macHeader":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/macs/HMac;

    array-length v5, v2

    invoke-virtual {v4, v2, v8, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 72
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v4, p2, p3, p4}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 74
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    .line 75
    .local v3, "result":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v4, v3, v8}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 76
    return-object v3

    .line 64
    .end local v2    # "macHeader":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal error during mac calculation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    return v0
.end method
