.class Ljavax/microedition/lcdui/Display$DisplayAccessor$3;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$1:Ljavax/microedition/lcdui/Display$DisplayAccessor;

.field private final val$x:I

.field private final val$y:I


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display$DisplayAccessor;II)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;->this$1:Ljavax/microedition/lcdui/Display$DisplayAccessor;

    iput p2, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;->val$x:I

    iput p3, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;->this$1:Ljavax/microedition/lcdui/Display$DisplayAccessor;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display$DisplayAccessor;->access$200(Ljavax/microedition/lcdui/Display$DisplayAccessor;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    iget v1, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;->val$x:I

    iget v2, p0, Ljavax/microedition/lcdui/Display$DisplayAccessor$3;->val$y:I

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/Displayable;->pointerDragged(II)V

    .line 292
    return-void
.end method
