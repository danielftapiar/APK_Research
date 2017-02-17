.class Ljavax/microedition/lcdui/Display$1$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private displayable:Ljavax/microedition/lcdui/Displayable;

.field private final this$1:Ljavax/microedition/lcdui/Display$1;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display$1;)V
    .locals 1

    .prologue
    .line 501
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$1$1;->this$1:Ljavax/microedition/lcdui/Display$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1$1;->this$1:Ljavax/microedition/lcdui/Display$1;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display$1;->access$600(Ljavax/microedition/lcdui/Display$1;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Display$1$1;->displayable:Ljavax/microedition/lcdui/Displayable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1$1;->displayable:Ljavax/microedition/lcdui/Displayable;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1$1;->this$1:Ljavax/microedition/lcdui/Display$1;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display$1;->access$600(Ljavax/microedition/lcdui/Display$1;)Ljavax/microedition/lcdui/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Displayable;->hideNotify(Ljavax/microedition/lcdui/Display;)V

    .line 507
    return-void
.end method
