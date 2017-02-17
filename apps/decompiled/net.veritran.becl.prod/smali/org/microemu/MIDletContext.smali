.class public Lorg/microemu/MIDletContext;
.super Ljava/lang/Object;
.source "MIDletContext.java"


# instance fields
.field private midletAccess:Lorg/microemu/MIDletAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public getMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/microemu/MIDletContext;->midletAccess:Lorg/microemu/MIDletAccess;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/microemu/MIDletContext;->midletAccess:Lorg/microemu/MIDletAccess;

    iget-object v0, v0, Lorg/microemu/MIDletAccess;->midlet:Ljavax/microedition/midlet/MIDlet;

    goto :goto_0
.end method

.method public getMIDletAccess()Lorg/microemu/MIDletAccess;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/microemu/MIDletContext;->midletAccess:Lorg/microemu/MIDletAccess;

    return-object v0
.end method

.method public isLauncher()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/microemu/MIDletContext;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v0

    instance-of v0, v0, Lorg/microemu/app/launcher/Launcher;

    return v0
.end method

.method protected setMIDletAccess(Lorg/microemu/MIDletAccess;)V
    .locals 0
    .param p1, "midletAccess"    # Lorg/microemu/MIDletAccess;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/microemu/MIDletContext;->midletAccess:Lorg/microemu/MIDletAccess;

    .line 58
    return-void
.end method
