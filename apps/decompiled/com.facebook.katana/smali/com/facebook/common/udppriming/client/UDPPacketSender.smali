.class public Lcom/facebook/common/udppriming/client/UDPPacketSender;
.super Ljava/lang/Object;
.source "UDPPacketSender.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x80e8

    sput v0, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 182
    if-nez v0, :cond_1

    .line 183
    const/4 v0, -0x1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    invoke-static {p2, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    .line 186
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "encryptedrequest"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "channel_id"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "encrypted_request"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 194
    array-length v0, v2

    .line 195
    const/16 v3, 0x5c0

    if-gt v0, v3, :cond_0

    .line 198
    new-instance v3, Ljava/net/DatagramPacket;

    sget v4, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I

    invoke-direct {v3, v2, v0, v1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 200
    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPacketSender;->b:Ljava/net/DatagramSocket;

    sget v4, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I

    invoke-virtual {v2, v1, v4}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 201
    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPacketSender;->b:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 202
    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPacketSender;->b:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    .locals 10

    .prologue
    .line 75
    const-class v3, Lcom/facebook/common/udppriming/client/UDPPacketSender;

    monitor-enter v3

    if-eqz p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, p6, v4

    if-nez v2, :cond_1

    .line 76
    :cond_0
    const/4 v2, -0x1

    .line 166
    :goto_0
    monitor-exit v3

    return v2

    .line 79
    :cond_1
    :try_start_0
    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPacketSender;->b:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPacketSender;->b:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    sget v4, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_3

    .line 81
    :cond_2
    :try_start_1
    new-instance v2, Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 82
    sput-object v2, Lcom/facebook/common/udppriming/client/UDPPacketSender;->b:Ljava/net/DatagramSocket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 83
    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPacketSender;->b:Ljava/net/DatagramSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    sget v5, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I

    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a()Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_4

    invoke-virtual {v2, p5}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 96
    :cond_4
    const/4 v2, -0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    const-string v4, "UDPPacketSender"

    const-string v5, "Socket Exception when new DatagramSocket in UDPPacketSender"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const/4 v2, -0x1

    goto :goto_0

    .line 101
    :cond_5
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 102
    const-string v5, "url"

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v5, "timestamp"

    move-wide/from16 v0, p6

    invoke-virtual {v4, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 108
    const-string v6, "X-FB-Connection-Type"

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v6, "x-fb-net-hni"

    if-nez p2, :cond_7

    const-string p2, ""

    :cond_7
    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v6, "x-fb-sim-hni"

    if-nez p3, :cond_8

    const-string p3, ""

    :cond_8
    invoke-virtual {v5, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v6, "x-fb-net-sid"

    if-nez p4, :cond_9

    const-string p4, ""

    :cond_9
    invoke-virtual {v5, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v6, "headers"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 121
    if-nez v4, :cond_a

    .line 122
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 125
    :cond_a
    invoke-virtual {v2}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 126
    invoke-virtual {v2}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 128
    invoke-virtual {v2}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 129
    new-instance v8, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v8, v5, v6, v9}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;-><init>([B[BLjava/security/SecureRandom;)V

    .line 135
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    invoke-virtual {v6, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 138
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 139
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 142
    invoke-virtual {v8, v4, v7}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a([B[B)[B

    move-result-object v4

    .line 143
    if-nez v4, :cond_b

    .line 144
    const-string v2, "UDPPacketSender"

    const-string v4, "UDP Priming packet encryption failed, might because of the preconditioncheck failed in function encryptMacForInitializationVector"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 150
    :cond_b
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v2}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-static {v2, v4, v0}, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    goto/16 :goto_0

    .line 156
    :catch_1
    move-exception v2

    .line 157
    :try_start_4
    const-string v4, "UDPPacketSender"

    const-string v5, "Json exception when apply json encoding in UDPPacketSender"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 159
    :catch_2
    move-exception v2

    .line 160
    :try_start_5
    const-string v4, "UDPPacketSender"

    const-string v5, "Encryption exception in UDPPacketSender"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 162
    :catch_3
    move-exception v2

    .line 163
    const-string v4, "UDPPacketSender"

    const-string v5, "IO exception in UDPPacketSender"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 54
    sput p0, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I

    .line 55
    return-void
.end method
