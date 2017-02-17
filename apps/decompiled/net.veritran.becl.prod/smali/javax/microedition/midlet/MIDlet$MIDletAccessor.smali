.class Ljavax/microedition/midlet/MIDlet$MIDletAccessor;
.super Lorg/microemu/MIDletAccess;
.source "MIDlet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/midlet/MIDlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MIDletAccessor"
.end annotation


# instance fields
.field private final this$0:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method public constructor <init>(Ljavax/microedition/midlet/MIDlet;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->this$0:Ljavax/microedition/midlet/MIDlet;

    .line 43
    invoke-direct {p0, p1}, Lorg/microemu/MIDletAccess;-><init>(Ljavax/microedition/midlet/MIDlet;)V

    .line 44
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljavax/microedition/midlet/MIDlet;->access$002(Ljavax/microedition/midlet/MIDlet;Z)Z

    .line 45
    return-void
.end method


# virtual methods
.method public destroyApp(Z)V
    .locals 2
    .param p1, "unconditional"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-static {v1}, Ljavax/microedition/midlet/MIDlet;->access$000(Ljavax/microedition/midlet/MIDlet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v1, p1}, Ljavax/microedition/midlet/MIDlet;->destroyApp(Z)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->getDisplayAccess()Lorg/microemu/DisplayAccess;

    move-result-object v0

    .line 61
    .local v0, "da":Lorg/microemu/DisplayAccess;
    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Lorg/microemu/DisplayAccess;->clean()V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->setDisplayAccess(Lorg/microemu/DisplayAccess;)V

    .line 65
    :cond_1
    iget-object v1, p0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-static {v1}, Lorg/microemu/MIDletBridge;->getMIDletContext(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletContext;

    move-result-object v1

    invoke-static {v1}, Lorg/microemu/MIDletBridge;->destroyMIDletContext(Lorg/microemu/MIDletContext;)V

    .line 66
    return-void
.end method

.method public pauseApp()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->pauseApp()V

    .line 54
    return-void
.end method

.method public startApp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-static {v0}, Lorg/microemu/MIDletBridge;->setCurrentMIDlet(Ljavax/microedition/midlet/MIDlet;)V

    .line 49
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet$MIDletAccessor;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->startApp()V

    .line 50
    return-void
.end method
