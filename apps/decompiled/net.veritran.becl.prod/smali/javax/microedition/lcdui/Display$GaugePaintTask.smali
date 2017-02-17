.class final Ljavax/microedition/lcdui/Display$GaugePaintTask;
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
    name = "GaugePaintTask"
.end annotation


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/Display;


# direct methods
.method private constructor <init>(Ljavax/microedition/lcdui/Display;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$GaugePaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Display$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/microedition/lcdui/Display;
    .param p2, "x1"    # Ljavax/microedition/lcdui/Display$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Display$GaugePaintTask;-><init>(Ljavax/microedition/lcdui/Display;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 75
    iget-object v4, p0, Ljavax/microedition/lcdui/Display$GaugePaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v4}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Ljavax/microedition/lcdui/Display$GaugePaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v4}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v4

    instance-of v4, v4, Ljavax/microedition/lcdui/Alert;

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, p0, Ljavax/microedition/lcdui/Display$GaugePaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v4}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v4

    check-cast v4, Ljavax/microedition/lcdui/Alert;

    iget-object v0, v4, Ljavax/microedition/lcdui/Alert;->indicator:Ljavax/microedition/lcdui/Gauge;

    .line 78
    .local v0, "gauge":Ljavax/microedition/lcdui/Gauge;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Gauge;->hasIndefiniteRange()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Gauge;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 79
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Gauge;->updateIndefiniteFrame()V

    .line 95
    .end local v0    # "gauge":Ljavax/microedition/lcdui/Gauge;
    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object v4, p0, Ljavax/microedition/lcdui/Display$GaugePaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v4}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v4

    instance-of v4, v4, Ljavax/microedition/lcdui/Form;

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, p0, Ljavax/microedition/lcdui/Display$GaugePaintTask;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v4}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v4

    check-cast v4, Ljavax/microedition/lcdui/Form;

    iget-object v3, v4, Ljavax/microedition/lcdui/Form;->items:[Ljavax/microedition/lcdui/Item;

    .line 83
    .local v3, "items":[Ljavax/microedition/lcdui/Item;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 84
    aget-object v2, v3, v1

    .line 85
    .local v2, "it":Ljavax/microedition/lcdui/Item;
    if-eqz v2, :cond_2

    instance-of v4, v2, Ljavax/microedition/lcdui/Gauge;

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 86
    check-cast v0, Ljavax/microedition/lcdui/Gauge;

    .line 88
    .restart local v0    # "gauge":Ljavax/microedition/lcdui/Gauge;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Gauge;->hasIndefiniteRange()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Gauge;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 89
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Gauge;->updateIndefiniteFrame()V

    .line 83
    .end local v0    # "gauge":Ljavax/microedition/lcdui/Gauge;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
