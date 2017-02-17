.class public Ljavax/microedition/io/PushRegistry;
.super Ljava/lang/Object;
.source "PushRegistry.java"


# static fields
.field static class$javax$microedition$io$PushRegistry:Ljava/lang/Class;

.field static class$org$microemu$microedition$io$PushRegistryDelegate:Ljava/lang/Class;

.field private static impl:Lorg/microemu/microedition/io/PushRegistryDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Ljavax/microedition/io/PushRegistry;->class$javax$microedition$io$PushRegistry:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.microedition.io.PushRegistry"

    invoke-static {v0}, Ljavax/microedition/io/PushRegistry;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljavax/microedition/io/PushRegistry;->class$javax$microedition$io$PushRegistry:Ljava/lang/Class;

    :goto_0
    sget-object v1, Ljavax/microedition/io/PushRegistry;->class$org$microemu$microedition$io$PushRegistryDelegate:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.microemu.microedition.io.PushRegistryDelegate"

    invoke-static {v1}, Ljavax/microedition/io/PushRegistry;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljavax/microedition/io/PushRegistry;->class$org$microemu$microedition$io$PushRegistryDelegate:Ljava/lang/Class;

    :goto_1
    invoke-static {v0, v1}, Lorg/microemu/microedition/ImplFactory;->getImplementation(Ljava/lang/Class;Ljava/lang/Class;)Lorg/microemu/microedition/Implementation;

    move-result-object v0

    check-cast v0, Lorg/microemu/microedition/io/PushRegistryDelegate;

    sput-object v0, Ljavax/microedition/io/PushRegistry;->impl:Lorg/microemu/microedition/io/PushRegistryDelegate;

    .line 41
    return-void

    .line 40
    :cond_0
    sget-object v0, Ljavax/microedition/io/PushRegistry;->class$javax$microedition$io$PushRegistry:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v1, Ljavax/microedition/io/PushRegistry;->class$org$microemu$microedition$io$PushRegistryDelegate:Ljava/lang/Class;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "connection"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Ljavax/microedition/io/PushRegistry;->impl:Lorg/microemu/microedition/io/PushRegistryDelegate;

    invoke-interface {v0, p0}, Lorg/microemu/microedition/io/PushRegistryDelegate;->getFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMIDlet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "connection"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Ljavax/microedition/io/PushRegistry;->impl:Lorg/microemu/microedition/io/PushRegistryDelegate;

    invoke-interface {v0, p0}, Lorg/microemu/microedition/io/PushRegistryDelegate;->getMIDlet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listConnections(Z)[Ljava/lang/String;
    .locals 1
    .param p0, "available"    # Z

    .prologue
    .line 53
    sget-object v0, Ljavax/microedition/io/PushRegistry;->impl:Lorg/microemu/microedition/io/PushRegistryDelegate;

    invoke-interface {v0, p0}, Lorg/microemu/microedition/io/PushRegistryDelegate;->listConnections(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerAlarm(Ljava/lang/String;J)J
    .locals 3
    .param p0, "midlet"    # Ljava/lang/String;
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Ljavax/microedition/io/PushRegistry;->impl:Lorg/microemu/microedition/io/PushRegistryDelegate;

    invoke-interface {v0, p0, p1, p2}, Lorg/microemu/microedition/io/PushRegistryDelegate;->registerAlarm(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static registerConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "connection"    # Ljava/lang/String;
    .param p1, "midlet"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Ljavax/microedition/io/PushRegistry;->impl:Lorg/microemu/microedition/io/PushRegistryDelegate;

    invoke-interface {v0, p0, p1, p2}, Lorg/microemu/microedition/io/PushRegistryDelegate;->registerConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static unregisterConnection(Ljava/lang/String;)Z
    .locals 1
    .param p0, "connection"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Ljavax/microedition/io/PushRegistry;->impl:Lorg/microemu/microedition/io/PushRegistryDelegate;

    invoke-interface {v0, p0}, Lorg/microemu/microedition/io/PushRegistryDelegate;->unregisterConnection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
