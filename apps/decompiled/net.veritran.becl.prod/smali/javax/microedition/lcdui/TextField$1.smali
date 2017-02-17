.class Ljavax/microedition/lcdui/TextField$1;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Lorg/microemu/device/InputMethodListener;


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/TextField;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/TextField;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public caretPositionChanged(Lorg/microemu/device/InputMethodEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/microemu/device/InputMethodEvent;

    .prologue
    .line 67
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p1}, Lorg/microemu/device/InputMethodEvent;->getCaret()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setCaretPosition(I)V

    .line 68
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    .line 69
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->repaint()V

    .line 70
    return-void
.end method

.method public getCaretPosition()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getCaretPosition()I

    move-result v0

    return v0
.end method

.method public getConstraints()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getConstraints()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inputMethodTextChanged(Lorg/microemu/device/InputMethodEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/microemu/device/InputMethodEvent;

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    .line 75
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p1}, Lorg/microemu/device/InputMethodEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/microemu/device/InputMethodEvent;->getCaret()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->repaint()V

    .line 78
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    iget-object v0, v0, Ljavax/microedition/lcdui/TextField;->owner:Ljavax/microedition/lcdui/Screen;

    instance-of v0, v0, Ljavax/microedition/lcdui/Form;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    iget-object v0, v0, Ljavax/microedition/lcdui/TextField;->owner:Ljavax/microedition/lcdui/Screen;

    check-cast v0, Ljavax/microedition/lcdui/Form;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Form;->fireItemStateListener()V

    .line 81
    :cond_0
    return-void
.end method
