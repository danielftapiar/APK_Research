.class public Lorg/slf4j/impl/AndroidLoggerFactory;
.super Ljava/lang/Object;
.source "AndroidLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field private final loggerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/slf4j/impl/AndroidLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private getLogger(Ljava/lang/String;)Lorg/slf4j/impl/AndroidLogger;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "slogger":Lorg/slf4j/impl/AndroidLogger;
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v3, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/slf4j/impl/AndroidLogger;

    move-object v1, v0

    .line 58
    if-nez v1, :cond_0

    .line 60
    new-instance v2, Lorg/slf4j/impl/AndroidLogger;

    invoke-direct {v2, p1}, Lorg/slf4j/impl/AndroidLogger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v1    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .local v2, "slogger":Lorg/slf4j/impl/AndroidLogger;
    :try_start_1
    iget-object v3, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 63
    .end local v2    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .restart local v1    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    return-object v1

    .line 63
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit p0

    throw v3

    .end local v1    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .restart local v2    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .restart local v1    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/slf4j/impl/AndroidLoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/impl/AndroidLogger;

    move-result-object v0

    return-object v0
.end method
