.class Ljavax/microedition/lcdui/TextBox$1;
.super Ljava/lang/Object;
.source "TextBox.java"

# interfaces
.implements Lorg/microemu/device/InputMethodListener;


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/TextBox;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/TextBox;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public caretPositionChanged(Lorg/microemu/device/InputMethodEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/microemu/device/InputMethodEvent;

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    invoke-virtual {p1}, Lorg/microemu/device/InputMethodEvent;->getCaret()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextBox;->setCaretPosition(I)V

    .line 42
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    iget-object v0, v0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    .line 43
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextBox;->repaint()V

    .line 44
    return-void
.end method

.method public getCaretPosition()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextBox;->getCaretPosition()I

    move-result v0

    return v0
.end method

.method public getConstraints()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextBox;->getConstraints()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextBox;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inputMethodTextChanged(Lorg/microemu/device/InputMethodEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/microemu/device/InputMethodEvent;

    .prologue
    .line 47
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    iget-object v0, v0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    .line 48
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    iget-object v0, v0, Ljavax/microedition/lcdui/TextBox;->tf:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p1}, Lorg/microemu/device/InputMethodEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/microemu/device/InputMethodEvent;->getCaret()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;I)V

    .line 49
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox$1;->this$0:Ljavax/microedition/lcdui/TextBox;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextBox;->repaint()V

    .line 50
    return-void
.end method
