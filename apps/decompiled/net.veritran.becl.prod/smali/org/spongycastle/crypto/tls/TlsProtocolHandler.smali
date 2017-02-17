.class public Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
.super Ljava/lang/Object;
.source "TlsProtocolHandler.java"


# static fields
.field private static final CS_CERTIFICATE_REQUEST_RECEIVED:S = 0x5s

.field private static final CS_CERTIFICATE_VERIFY_SEND:S = 0x8s

.field private static final CS_CLIENT_CHANGE_CIPHER_SPEC_SEND:S = 0x9s

.field private static final CS_CLIENT_FINISHED_SEND:S = 0xas

.field private static final CS_CLIENT_HELLO_SEND:S = 0x1s

.field private static final CS_CLIENT_KEY_EXCHANGE_SEND:S = 0x7s

.field private static final CS_DONE:S = 0xcs

.field private static final CS_SERVER_CERTIFICATE_RECEIVED:S = 0x3s

.field private static final CS_SERVER_CHANGE_CIPHER_SPEC_RECEIVED:S = 0xbs

.field private static final CS_SERVER_HELLO_DONE_RECEIVED:S = 0x6s

.field private static final CS_SERVER_HELLO_RECEIVED:S = 0x2s

.field private static final CS_SERVER_KEY_EXCHANGE_RECEIVED:S = 0x4s

.field private static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"

.field private static final emptybuf:[B


# instance fields
.field private alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private appDataReady:Z

.field private applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field private certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field private changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private clientExtensions:Ljava/util/Hashtable;

.field private closed:Z

.field private connection_state:S

.field private failedWithError:Z

.field private handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field private offeredCipherSuites:[I

.field private offeredCompressionMethods:[S

.field private random:Ljava/security/SecureRandom;

.field private rs:Lorg/spongycastle/crypto/tls/RecordStream;

.field private securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field private tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

.field private tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

.field private tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Integer;

    const v1, 0xff01

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 98
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "sr"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 49
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 51
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 59
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    .line 60
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    .line 62
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 63
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 64
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    .line 67
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 69
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 70
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 71
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    .line 72
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    .line 73
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 74
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 75
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 77
    iput-short v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 103
    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/spongycastle/crypto/tls/RecordStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    .line 104
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    .line 105
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "n"    # I

    .prologue
    .line 1186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1188
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 1190
    const/4 v1, 0x1

    .line 1193
    :goto_1
    return v1

    .line 1186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1193
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static arrayContains([SS)Z
    .locals 2
    .param p0, "a"    # [S
    .param p1, "n"    # S

    .prologue
    .line 1174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1176
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 1178
    const/4 v1, 0x1

    .line 1181
    :goto_1
    return v1

    .line 1174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static createRenegotiationInfo([B)[B
    .locals 2
    .param p0, "renegotiated_connection"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1200
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 1201
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static createSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    .line 86
    .local v1, "tsg":Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 91
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 93
    return-object v0
.end method

.method private failWithError(SS)V
    .locals 3
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1104
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_1

    .line 1109
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 1111
    if-ne p1, v2, :cond_0

    .line 1116
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 1118
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendAlert(SS)V

    .line 1119
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->close()V

    .line 1120
    if-ne p1, v2, :cond_2

    .line 1122
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_2
    return-void
.end method

.method private processAlert()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 670
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v3

    if-lt v3, v4, :cond_2

    .line 675
    new-array v2, v4, [B

    .line 676
    .local v2, "tmp":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v2, v5, v4, v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 677
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 678
    aget-byte v3, v2, v5

    int-to-short v1, v3

    .line 679
    .local v1, "level":S
    aget-byte v3, v2, v6

    int-to-short v0, v3

    .line 680
    .local v0, "description":S
    if-ne v1, v4, :cond_1

    .line 685
    iput-boolean v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 686
    iput-boolean v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 692
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Internal TLS error, this could be an attack"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 705
    :cond_1
    if-nez v0, :cond_0

    .line 710
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    .line 717
    .end local v0    # "description":S
    .end local v1    # "level":S
    .end local v2    # "tmp":[B
    :cond_2
    return-void

    .line 694
    .restart local v0    # "description":S
    .restart local v1    # "level":S
    .restart local v2    # "tmp":[B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private processApplicationData()V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method private processChangeCipherSpec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 727
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 732
    new-array v0, v2, [B

    .line 733
    .local v0, "b":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0, v3, v2, v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 734
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 735
    aget-byte v1, v0, v3

    if-eq v1, v2, :cond_0

    .line 740
    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 746
    :cond_0
    iget-short v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v1, v5, :cond_1

    .line 748
    const/16 v1, 0x28

    invoke-direct {p0, v4, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 751
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->serverClientSpecReceived()V

    .line 753
    const/16 v1, 0xb

    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    .line 755
    .end local v0    # "b":[B
    :cond_2
    return-void
.end method

.method private processHandshake()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 148
    :cond_0
    const/4 v4, 0x0

    .line 152
    .local v4, "read":Z
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    if-lt v6, v9, :cond_1

    .line 154
    new-array v0, v9, [B

    .line 155
    .local v0, "beginning":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v0, v8, v9, v8}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 156
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 157
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    .line 158
    .local v5, "type":S
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    .line 163
    .local v3, "len":I
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    add-int/lit8 v7, v3, 0x4

    if-lt v6, v7, :cond_1

    .line 168
    new-array v2, v3, [B

    .line 169
    .local v2, "buf":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v2, v8, v3, v9}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 170
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    add-int/lit8 v7, v3, 0x4

    invoke-virtual {v6, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 178
    sparse-switch v5, :sswitch_data_0

    .line 184
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v0, v8, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 185
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v2, v8, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 192
    :sswitch_0
    invoke-direct {p0, v5, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processHandshakeMessage(S[B)V

    .line 193
    const/4 v4, 0x1

    .line 197
    .end local v0    # "beginning":[B
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    .end local v5    # "type":S
    :cond_1
    if-nez v4, :cond_0

    .line 198
    return-void

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private processHandshakeMessage(S[B)V
    .locals 40
    .param p1, "type"    # S
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 204
    .local v22, "is":Ljava/io/ByteArrayInputStream;
    sparse-switch p1, :sswitch_data_0

    .line 653
    const/16 v36, 0x2

    const/16 v37, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 208
    :sswitch_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_0

    .line 226
    const/16 v36, 0x2

    const/16 v37, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 229
    :goto_1
    const/16 v36, 0x3

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    .line 214
    :pswitch_0
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v31

    .line 216
    .local v31, "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_1

    .line 233
    .end local v31    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    :sswitch_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_1

    .line 271
    const/16 v36, 0x2

    const/16 v37, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    .line 240
    :pswitch_1
    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v33, v0

    .line 241
    .local v33, "serverVerifyData":[B
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    move-object/from16 v36, v0

    const-string v37, "server finished"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lorg/spongycastle/crypto/tls/RecordStream;->getCurrentHash()[B

    move-result-object v38

    const/16 v39, 0xc

    invoke-static/range {v36 .. v39}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v16

    .line 255
    .local v16, "expectedServerVerifyData":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v36

    if-nez v36, :cond_1

    .line 260
    const/16 v36, 0x2

    const/16 v37, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 263
    :cond_1
    const/16 v36, 0xc

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 268
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    goto/16 :goto_0

    .line 275
    .end local v16    # "expectedServerVerifyData":[B
    .end local v33    # "serverVerifyData":[B
    :sswitch_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_2

    .line 440
    const/16 v36, 0x2

    const/16 v37, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    .line 281
    :pswitch_2
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lorg/spongycastle/crypto/tls/TlsProtocolHandler;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v36, v0

    const/16 v37, 0x20

    move/from16 v0, v37

    new-array v0, v0, [B

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 289
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v34

    .line 290
    .local v34, "sessionID":[B
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x20

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_2

    .line 292
    const/16 v36, 0x2

    const/16 v37, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 301
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v29

    .line 302
    .local v29, "selectedCipherSuite":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->arrayContains([II)Z

    move-result v36

    if-eqz v36, :cond_3

    const/16 v36, 0xff

    move/from16 v0, v29

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 305
    :cond_3
    const/16 v36, 0x2

    const/16 v37, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 308
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 314
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v30

    .line 315
    .local v30, "selectedCompressionMethod":S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->arrayContains([SS)Z

    move-result v36

    if-nez v36, :cond_5

    .line 317
    const/16 v36, 0x2

    const/16 v37, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 320
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 340
    new-instance v32, Ljava/util/Hashtable;

    invoke-direct/range {v32 .. v32}, Ljava/util/Hashtable;-><init>()V

    .line 342
    .local v32, "serverExtensions":Ljava/util/Hashtable;
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v36

    if-lez v36, :cond_8

    .line 345
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v18

    .line 347
    .local v18, "extBytes":[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 348
    .local v17, "ext":Ljava/io/ByteArrayInputStream;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v36

    if-lez v36, :cond_8

    .line 350
    new-instance v19, Ljava/lang/Integer;

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v36

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 351
    .local v19, "extType":Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v20

    .line 365
    .local v20, "extValue":[B
    sget-object v36, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-nez v36, :cond_6

    .line 378
    const/16 v36, 0x2

    const/16 v37, 0x6e

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 382
    :cond_6
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 391
    const/16 v36, 0x2

    const/16 v37, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 395
    :cond_7
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 399
    .end local v17    # "ext":Ljava/io/ByteArrayInputStream;
    .end local v18    # "extBytes":[B
    .end local v19    # "extType":Ljava/lang/Integer;
    .end local v20    # "extValue":[B
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 406
    sget-object v36, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    .line 415
    .local v28, "secure_negotiation":Z
    if-eqz v28, :cond_9

    .line 417
    sget-object v36, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [B

    move-object/from16 v27, v36

    check-cast v27, [B

    .line 419
    .local v27, "renegExtValue":[B
    sget-object v36, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    invoke-static/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->createRenegotiationInfo([B)[B

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v36

    if-nez v36, :cond_9

    .line 422
    const/16 v36, 0x2

    const/16 v37, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 427
    .end local v27    # "renegExtValue":[B
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    if-eqz v36, :cond_a

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    .line 435
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 437
    const/16 v36, 0x2

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 444
    .end local v28    # "secure_negotiation":Z
    .end local v29    # "selectedCipherSuite":I
    .end local v30    # "selectedCompressionMethod":S
    .end local v32    # "serverExtensions":Ljava/util/Hashtable;
    .end local v34    # "sessionID":[B
    :sswitch_3
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_3

    .line 550
    const/16 v36, 0x2

    const/16 v37, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    .line 449
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 456
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 458
    const/16 v36, 0x6

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 460
    const/4 v12, 0x0

    .line 461
    .local v12, "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v36, v0

    if-nez v36, :cond_c

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 488
    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange()V

    .line 490
    const/16 v36, 0x7

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 492
    if-eqz v12, :cond_b

    instance-of v0, v12, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move/from16 v36, v0

    if-eqz v36, :cond_b

    move-object/from16 v35, v12

    .line 494
    check-cast v35, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 495
    .local v35, "signerCreds":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/RecordStream;->getCurrentHash()[B

    move-result-object v23

    .line 496
    .local v23, "md5andsha1":[B
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v11

    .line 498
    .local v11, "clientCertificateSignature":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendCertificateVerify([B)V

    .line 500
    const/16 v36, 0x8

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 506
    .end local v11    # "clientCertificateSignature":[B
    .end local v23    # "md5andsha1":[B
    .end local v35    # "signerCreds":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_b
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v14, v0, [B

    .line 507
    .local v14, "cmessage":[B
    const/16 v36, 0x0

    const/16 v37, 0x1

    aput-byte v37, v14, v36

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v36, v0

    const/16 v37, 0x14

    const/16 v38, 0x0

    array-length v0, v14

    move/from16 v39, v0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v14, v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 511
    const/16 v36, 0x9

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object v26

    .line 518
    .local v26, "pms":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v36, v0

    const-string v37, "master secret"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    move-object/from16 v39, v0

    invoke-static/range {v38 .. v39}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v38

    const/16 v39, 0x30

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 527
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/crypto/tls/TlsClient;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lorg/spongycastle/crypto/tls/RecordStream;->clientCipherSpecDecided(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    move-object/from16 v36, v0

    const-string v37, "client finished"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lorg/spongycastle/crypto/tls/RecordStream;->getCurrentHash()[B

    move-result-object v38

    const/16 v39, 0xc

    invoke-static/range {v36 .. v39}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v13

    .line 540
    .local v13, "clientVerifyData":[B
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 541
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v36, 0x14

    move/from16 v0, v36

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 542
    invoke-static {v13, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    .line 543
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    .line 545
    .local v24, "message":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v36, v0

    const/16 v37, 0x16

    const/16 v38, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v24

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 547
    const/16 v36, 0xa

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 467
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "clientVerifyData":[B
    .end local v14    # "cmessage":[B
    .end local v24    # "message":[B
    .end local v26    # "pms":[B
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v12

    .line 470
    if-nez v12, :cond_d

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 473
    sget-object v10, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    .line 481
    .local v10, "clientCert":Lorg/spongycastle/crypto/tls/Certificate;
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto/16 :goto_3

    .line 477
    .end local v10    # "clientCert":Lorg/spongycastle/crypto/tls/Certificate;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 478
    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v10

    .restart local v10    # "clientCert":Lorg/spongycastle/crypto/tls/Certificate;
    goto :goto_4

    .line 555
    .end local v10    # "clientCert":Lorg/spongycastle/crypto/tls/Certificate;
    .end local v12    # "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    :sswitch_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_4

    .line 573
    const/16 v36, 0x2

    const/16 v37, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 576
    :goto_5
    const/16 v36, 0x4

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 560
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCertificate()V

    .line 561
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 567
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    goto :goto_5

    .line 581
    :sswitch_5
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_5

    .line 628
    const/16 v36, 0x2

    const/16 v37, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 631
    :goto_6
    const/16 v36, 0x5

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 586
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 592
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-object/from16 v36, v0

    if-nez v36, :cond_e

    .line 598
    const/16 v36, 0x2

    const/16 v37, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 601
    :cond_e
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v25

    .line 602
    .local v25, "numTypes":I
    move/from16 v0, v25

    new-array v9, v0, [S

    .line 603
    .local v9, "certificateTypes":[S
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 605
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v36

    aput-short v36, v9, v21

    .line 603
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 608
    :cond_f
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 610
    .local v5, "authorities":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 612
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 614
    .local v6, "authorityDNs":Ljava/util/Vector;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 615
    .local v7, "bis":Ljava/io/ByteArrayInputStream;
    :goto_8
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v36

    if-lez v36, :cond_10

    .line 617
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v15

    .line 618
    .local v15, "dnBytes":[B
    invoke-static {v15}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_8

    .line 621
    .end local v15    # "dnBytes":[B
    :cond_10
    new-instance v36, Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v0, v36

    invoke-direct {v0, v9, v6}, Lorg/spongycastle/crypto/tls/CertificateRequest;-><init>([SLjava/util/Vector;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    goto/16 :goto_6

    .line 642
    .end local v5    # "authorities":[B
    .end local v6    # "authorityDNs":Ljava/util/Vector;
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v9    # "certificateTypes":[S
    .end local v21    # "i":I
    .end local v25    # "numTypes":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v36, v0

    const/16 v37, 0xc

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_0

    .line 645
    const/16 v36, 0x1

    const/16 v37, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendAlert(SS)V

    goto/16 :goto_0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x2 -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_3
        0x14 -> :sswitch_1
    .end sparse-switch

    .line 208
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    .line 275
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 444
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 555
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 581
    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private safeReadData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x2

    .line 969
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->readData()V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 995
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_0

    .line 975
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 977
    :cond_0
    throw v0

    .line 979
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 981
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_1

    .line 983
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 985
    :cond_1
    throw v0

    .line 987
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_2

    .line 991
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 993
    :cond_2
    throw v0
.end method

.method private safeWriteMessage(S[BII)V
    .locals 4
    .param p1, "type"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x2

    .line 1001
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1027
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_0

    .line 1007
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1009
    :cond_0
    throw v0

    .line 1011
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_1

    .line 1015
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1017
    :cond_1
    throw v0

    .line 1019
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_2

    .line 1023
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1025
    :cond_2
    throw v0
.end method

.method private sendAlert(SS)V
    .locals 5
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1133
    new-array v0, v4, [B

    .line 1134
    .local v0, "error":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 1135
    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 1137
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 1138
    return-void
.end method

.method private sendCertificateVerify([B)V
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 784
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0xf

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 785
    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 786
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 787
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 789
    .local v1, "message":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 790
    return-void
.end method

.method private sendClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 6
    .param p1, "clientCert"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 760
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0xb

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 761
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    .line 762
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 764
    .local v1, "message":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 765
    return-void
.end method

.method private sendClientKeyExchange()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 770
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x10

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 771
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 774
    .local v1, "message":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 775
    return-void
.end method

.method private static writeExtension(Ljava/io/OutputStream;Ljava/lang/Integer;[B)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "extType"    # Ljava/lang/Integer;
    .param p2, "extValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1207
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 1208
    invoke-static {p2, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 1209
    return-void
.end method


# virtual methods
.method protected assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 1163
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1165
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_0

    .line 1149
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1151
    :cond_0
    return-void
.end method

.method public connect(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V
    .locals 1
    .param p1, "verifyer"    # Lorg/spongycastle/crypto/tls/CertificateVerifyer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    new-instance v0, Lorg/spongycastle/crypto/tls/LegacyTlsClient;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/LegacyTlsClient;-><init>(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connect(Lorg/spongycastle/crypto/tls/TlsClient;)V

    .line 804
    return-void
.end method

.method public connect(Lorg/spongycastle/crypto/tls/TlsClient;)V
    .locals 13
    .param p1, "tlsClient"    # Lorg/spongycastle/crypto/tls/TlsClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 814
    if-nez p1, :cond_0

    .line 816
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "\'tlsClient\' cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 818
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    if-eqz v8, :cond_1

    .line 820
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "connect can only be called once"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 828
    :cond_1
    new-instance v8, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v8}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 829
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v11, 0x20

    new-array v11, v11, [B

    iput-object v11, v8, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 830
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v11, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-virtual {v8, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 831
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v8, v8, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-static {v8, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeGMTUnixTime([BI)V

    .line 833
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v8, v11, v12}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 834
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 835
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v8, v11}, Lorg/spongycastle/crypto/tls/TlsClient;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    .line 837
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 838
    .local v7, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Ljava/io/OutputStream;)V

    .line 839
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v8, v8, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 844
    invoke-static {v9, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 849
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    .line 852
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    .line 861
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    sget-object v11, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v8, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    :cond_2
    move v6, v10

    .line 864
    .local v6, "noRenegExt":Z
    :goto_0
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    array-length v1, v8

    .line 865
    .local v1, "count":I
    if-eqz v6, :cond_3

    .line 868
    add-int/lit8 v1, v1, 0x1

    .line 871
    :cond_3
    mul-int/lit8 v8, v1, 0x2

    invoke-static {v8, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 872
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    invoke-static {v8, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    .line 874
    if-eqz v6, :cond_4

    .line 876
    const/16 v8, 0xff

    invoke-static {v8, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 881
    :cond_4
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    .line 883
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    array-length v8, v8

    int-to-short v8, v8

    invoke-static {v8, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 884
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    invoke-static {v8, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    .line 887
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v8, :cond_7

    .line 889
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 891
    .local v2, "ext":Ljava/io/ByteArrayOutputStream;
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 892
    .local v4, "keys":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 894
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 895
    .local v3, "extType":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v2, v3, v8}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->writeExtension(Ljava/io/OutputStream;Ljava/lang/Integer;[B)V

    goto :goto_1

    .end local v1    # "count":I
    .end local v2    # "ext":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "extType":Ljava/lang/Integer;
    .end local v4    # "keys":Ljava/util/Enumeration;
    .end local v6    # "noRenegExt":Z
    :cond_5
    move v6, v9

    .line 861
    goto :goto_0

    .line 898
    .restart local v1    # "count":I
    .restart local v2    # "ext":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "keys":Ljava/util/Enumeration;
    .restart local v6    # "noRenegExt":Z
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 901
    .end local v2    # "ext":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "keys":Ljava/util/Enumeration;
    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 902
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v10, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 903
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 904
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 905
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 907
    .local v5, "message":[B
    const/16 v8, 0x16

    array-length v11, v5

    invoke-direct {p0, v8, v5, v9, v11}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    .line 909
    iput-short v10, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 914
    :goto_2
    iget-short v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v9, 0xc

    if-eq v8, v9, :cond_8

    .line 916
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeReadData()V

    goto :goto_2

    .line 919
    :cond_8
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsInputStream;

    invoke-direct {v8, p0}, Lorg/spongycastle/crypto/tls/TlsInputStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    .line 920
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsOutputStream;

    invoke-direct {v8, p0}, Lorg/spongycastle/crypto/tls/TlsOutputStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    .line 921
    return-void
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->flush()V

    .line 1170
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    return-object v0
.end method

.method protected processData(S[BII)V
    .locals 2
    .param p1, "protocol"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processChangeCipherSpec()V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 120
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processAlert()V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 124
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processHandshake()V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 132
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processApplicationData()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected readApplicationData([BII)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 941
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v0, :cond_1

    .line 943
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v0, :cond_0

    .line 948
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_0
    const/4 v0, -0x1

    .line 962
    :goto_1
    return v0

    .line 957
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeReadData()V

    goto :goto_0

    .line 959
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 960
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 961
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    move v0, p3

    .line 962
    goto :goto_1
.end method

.method protected writeData([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x17

    const/4 v2, 0x0

    .line 1041
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v1, :cond_1

    .line 1043
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v1, :cond_0

    .line 1045
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1048
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1056
    :cond_1
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    invoke-direct {p0, v3, v1, v2, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    .line 1063
    :cond_2
    const/16 v1, 0x4000

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1065
    .local v0, "toWrite":I
    invoke-direct {p0, v3, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    .line 1067
    add-int/2addr p2, v0

    .line 1068
    sub-int/2addr p3, v0

    .line 1070
    if-gtz p3, :cond_2

    .line 1072
    return-void
.end method
