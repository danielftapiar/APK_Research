.class public abstract Lorg/microemu/MIDletAccess;
.super Ljava/lang/Object;
.source "MIDletAccess.java"


# instance fields
.field private displayAccess:Lorg/microemu/DisplayAccess;

.field public midlet:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method public constructor <init>(Ljavax/microedition/midlet/MIDlet;)V
    .locals 0
    .param p1, "amidlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/microemu/MIDletAccess;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 50
    return-void
.end method


# virtual methods
.method public abstract destroyApp(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method

.method public getDisplayAccess()Lorg/microemu/DisplayAccess;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/microemu/MIDletAccess;->displayAccess:Lorg/microemu/DisplayAccess;

    return-object v0
.end method

.method public abstract pauseApp()V
.end method

.method public setDisplayAccess(Lorg/microemu/DisplayAccess;)V
    .locals 0
    .param p1, "adisplayAccess"    # Lorg/microemu/DisplayAccess;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/microemu/MIDletAccess;->displayAccess:Lorg/microemu/DisplayAccess;

    .line 58
    return-void
.end method

.method public abstract startApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method
