.class public abstract Ljavax/microedition/midlet/MIDlet;
.super Ljava/lang/Object;
.source "MIDlet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/midlet/MIDlet$MIDletAccessor;
    }
.end annotation


# instance fields
.field private destroyed:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;

    invoke-direct {v0, p0}, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;-><init>(Ljavax/microedition/midlet/MIDlet;)V

    invoke-static {v0}, Lorg/microemu/MIDletBridge;->registerMIDletAccess(Lorg/microemu/MIDletAccess;)V

    .line 71
    return-void
.end method

.method static access$000(Ljavax/microedition/midlet/MIDlet;)Z
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 36
    iget-boolean v0, p0, Ljavax/microedition/midlet/MIDlet;->destroyed:Z

    return v0
.end method

.method static access$002(Ljavax/microedition/midlet/MIDlet;Z)Z
    .locals 0
    .param p0, "x0"    # Ljavax/microedition/midlet/MIDlet;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Ljavax/microedition/midlet/MIDlet;->destroyed:Z

    return p1
.end method


# virtual methods
.method public final checkPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Lorg/microemu/MIDletBridge;->checkPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract destroyApp(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method

.method public final getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Lorg/microemu/MIDletBridge;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final notifyDestroyed()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/microedition/midlet/MIDlet;->destroyed:Z

    .line 89
    invoke-static {}, Lorg/microemu/MIDletBridge;->notifyDestroyed()V

    .line 90
    return-void
.end method

.method public final notifyPaused()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected abstract pauseApp()V
.end method

.method public final platformRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p1}, Lorg/microemu/MIDletBridge;->platformRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final resumeRequest()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected abstract startApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method
