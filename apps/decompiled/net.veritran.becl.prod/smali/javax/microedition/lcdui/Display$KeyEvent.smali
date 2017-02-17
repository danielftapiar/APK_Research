.class final Ljavax/microedition/lcdui/Display$KeyEvent;
.super Lorg/microemu/device/ui/EventDispatcher$Event;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyEvent"
.end annotation


# static fields
.field static final KEY_PRESSED:S = 0x0s

.field static final KEY_RELEASED:S = 0x1s

.field static final KEY_REPEATED:S = 0x2s


# instance fields
.field private keyCode:I

.field private final this$0:Ljavax/microedition/lcdui/Display;

.field private type:S


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;SI)V
    .locals 1
    .param p2, "type"    # S
    .param p3, "keyCode"    # I

    .prologue
    .line 142
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->this$0:Ljavax/microedition/lcdui/Display;

    .line 143
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->access$100(Ljavax/microedition/lcdui/Display;)Lorg/microemu/device/ui/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/microemu/device/ui/EventDispatcher$Event;-><init>(Lorg/microemu/device/ui/EventDispatcher;)V

    .line 144
    iput-short p2, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->type:S

    .line 145
    iput p3, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->keyCode:I

    .line 146
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-short v0, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->type:S

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    iget v1, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->keyCode:I

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Displayable;->keyPressed(I)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    iget v1, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->keyCode:I

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Displayable;->keyReleased(I)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    iget v1, p0, Ljavax/microedition/lcdui/Display$KeyEvent;->keyCode:I

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Displayable;->keyRepeated(I)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
