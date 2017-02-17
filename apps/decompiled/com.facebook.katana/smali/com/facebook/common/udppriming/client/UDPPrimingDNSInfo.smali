.class public Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;
.super Ljava/lang/Object;
.source "UDPPrimingDNSInfo.java"


# static fields
.field private static final a:Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private volatile c:[B

.field private volatile d:J

.field private volatile e:[B

.field private volatile f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    invoke-direct {v0}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;-><init>()V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a:Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:[B

    .line 35
    iput-wide v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:J

    .line 36
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:[B

    .line 37
    iput-wide v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->f:J

    .line 28
    return-void
.end method

.method public static a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a:Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    return-object v0
.end method

.method private static a(JJ)Z
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 118
    :goto_0
    monitor-exit p0

    return v0

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    const-string v1, "UDP_PRIMING_DNS/DEFAULT_HOST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:[B

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    const-string v1, "UDP_PRIMING_DNS/DEFAULT_HOST_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:J

    .line 113
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    const-string v1, "UDP_PRIMING_DNS/B_HOST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:[B

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    const-string v1, "UDP_PRIMING_DNS/B_HOST_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v0, "graph.facebook.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iput-object p2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:[B

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:J

    .line 74
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    const-string v1, "UDP_PRIMING_DNS/DEFAULT_HOST"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:[B

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v1, "UDP_PRIMING_DNS/DEFAULT_HOST_TIMESTAMP"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    :cond_2
    const-string v0, "b-graph.facebook.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-object p2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:[B

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->f:J

    .line 84
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    const-string v1, "UDP_PRIMING_DNS/B_HOST"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:[B

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v1, "UDP_PRIMING_DNS/B_HOST_TIMESTAMP"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 97
    const-string v0, "UDP_PRIMING_DNS_INFO_STORAGE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    .line 98
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const-wide/32 v4, 0x6ddd00

    const/4 v0, 0x1

    .line 44
    const-string v1, "graph.facebook.com"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:J

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    const-string v1, "b-graph.facebook.com"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->f:J

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const-wide/32 v2, 0x44aa200

    .line 56
    const-string v0, "graph.facebook.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:[B

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-string v0, "b-graph.facebook.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:[B

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
