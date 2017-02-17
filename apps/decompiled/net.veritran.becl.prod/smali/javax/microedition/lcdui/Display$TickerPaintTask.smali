.class final Ljavax/microedition/lcdui/Display$TickerPaintTask;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TickerPaintTask"
.end annotation


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/Display;


# direct methods
.method private constructor <init>(Ljavax/microedition/lcdui/Display;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$TickerPaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Display$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/microedition/lcdui/Display;
    .param p2, "x1"    # Ljavax/microedition/lcdui/Display$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Display$TickerPaintTask;-><init>(Ljavax/microedition/lcdui/Display;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 105
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$TickerPaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$TickerPaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->getTicker()Ljavax/microedition/lcdui/Ticker;

    move-result-object v6

    .line 107
    .local v6, "ticker":Ljavax/microedition/lcdui/Ticker;
    if-eqz v6, :cond_1

    .line 108
    monitor-enter v6

    .line 109
    :try_start_0
    iget v0, v6, Ljavax/microedition/lcdui/Ticker;->resetTextPosTo:I

    if-eq v0, v1, :cond_0

    .line 110
    iget v0, v6, Ljavax/microedition/lcdui/Ticker;->resetTextPosTo:I

    iput v0, v6, Ljavax/microedition/lcdui/Ticker;->textPos:I

    .line 111
    const/4 v0, -0x1

    iput v0, v6, Ljavax/microedition/lcdui/Ticker;->resetTextPosTo:I

    .line 113
    :cond_0
    iget v0, v6, Ljavax/microedition/lcdui/Ticker;->textPos:I

    sget v1, Ljavax/microedition/lcdui/Ticker;->PAINT_MOVE:I

    sub-int/2addr v0, v1

    iput v0, v6, Ljavax/microedition/lcdui/Ticker;->textPos:I

    .line 114
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$TickerPaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$TickerPaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    iget-object v3, p0, Ljavax/microedition/lcdui/Display$TickerPaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v3}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Displayable;->getWidth()I

    move-result v4

    iget-object v3, p0, Ljavax/microedition/lcdui/Display$TickerPaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v3}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Displayable;->getHeight()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/microedition/lcdui/Display;->repaint(Ljavax/microedition/lcdui/Displayable;IIII)V

    .line 118
    .end local v6    # "ticker":Ljavax/microedition/lcdui/Ticker;
    :cond_1
    return-void

    .line 114
    .restart local v6    # "ticker":Ljavax/microedition/lcdui/Ticker;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
