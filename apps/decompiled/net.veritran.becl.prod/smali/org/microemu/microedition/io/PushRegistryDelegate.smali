.class public interface abstract Lorg/microemu/microedition/io/PushRegistryDelegate;
.super Ljava/lang/Object;
.source "PushRegistryDelegate.java"


# virtual methods
.method public abstract getFilter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMIDlet(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract listConnections(Z)[Ljava/lang/String;
.end method

.method public abstract registerAlarm(Ljava/lang/String;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation
.end method

.method public abstract registerConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unregisterConnection(Ljava/lang/String;)Z
.end method
