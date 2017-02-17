.class public interface abstract Lorg/microemu/MicroEmulator;
.super Ljava/lang/Object;
.source "MicroEmulator.java"


# virtual methods
.method public abstract checkPermission(Ljava/lang/String;)I
.end method

.method public abstract destroyMIDletContext(Lorg/microemu/MIDletContext;)V
.end method

.method public abstract getAppProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLauncher()Lorg/microemu/app/launcher/Launcher;
.end method

.method public abstract getRecordStoreManager()Lorg/microemu/RecordStoreManager;
.end method

.method public abstract getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract notifyDestroyed(Lorg/microemu/MIDletContext;)V
.end method

.method public abstract platformRequest(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation
.end method
