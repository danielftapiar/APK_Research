.class final Ljavax/microedition/lcdui/Alert$1;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 2
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;
    .param p2, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 57
    check-cast p2, Ljavax/microedition/lcdui/Alert;

    .end local p2    # "d":Ljavax/microedition/lcdui/Displayable;
    iget-object v0, p2, Ljavax/microedition/lcdui/Alert;->currentDisplay:Ljavax/microedition/lcdui/Display;

    sget-object v1, Ljavax/microedition/lcdui/Alert;->nextDisplayable:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 58
    return-void
.end method
