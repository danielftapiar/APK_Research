.class public Ljavax/microedition/lcdui/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field static PAINT_GAP:I

.field static PAINT_MOVE:I

.field static PAINT_TIMEOUT:I


# instance fields
.field instance:Ljavax/microedition/lcdui/Ticker;

.field resetTextPosTo:I

.field text:Ljava/lang/String;

.field textPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xfa

    sput v0, Ljavax/microedition/lcdui/Ticker;->PAINT_TIMEOUT:I

    .line 38
    const/4 v0, 0x5

    sput v0, Ljavax/microedition/lcdui/Ticker;->PAINT_MOVE:I

    .line 39
    const/16 v0, 0xa

    sput v0, Ljavax/microedition/lcdui/Ticker;->PAINT_GAP:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Ticker;->instance:Ljavax/microedition/lcdui/Ticker;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/Ticker;->textPos:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/Ticker;->resetTextPosTo:I

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p0, p0, Ljavax/microedition/lcdui/Ticker;->instance:Ljavax/microedition/lcdui/Ticker;

    .line 55
    iput-object p1, p0, Ljavax/microedition/lcdui/Ticker;->text:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method getHeight()I
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljavax/microedition/lcdui/Ticker;->text:Ljava/lang/String;

    return-object v0
.end method

.method paintContent(Ljavax/microedition/lcdui/Graphics;)I
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 82
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    .line 84
    .local v1, "f":Ljavax/microedition/lcdui/Font;
    iget-object v5, p0, Ljavax/microedition/lcdui/Ticker;->instance:Ljavax/microedition/lcdui/Ticker;

    monitor-enter v5

    .line 85
    :try_start_0
    iget-object v4, p0, Ljavax/microedition/lcdui/Ticker;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v4

    sget v6, Ljavax/microedition/lcdui/Ticker;->PAINT_GAP:I

    add-int v2, v4, v6

    .line 86
    .local v2, "stringWidth":I
    iget-object v4, p0, Ljavax/microedition/lcdui/Ticker;->text:Ljava/lang/String;

    iget v6, p0, Ljavax/microedition/lcdui/Ticker;->textPos:I

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {p1, v4, v6, v7, v8}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 87
    iget v4, p0, Ljavax/microedition/lcdui/Ticker;->textPos:I

    add-int v3, v4, v2

    .line 88
    .local v3, "xPos":I
    invoke-static {}, Lorg/microemu/MIDletBridge;->getMIDletAccess()Lorg/microemu/MIDletAccess;

    move-result-object v4

    invoke-virtual {v4}, Lorg/microemu/MIDletAccess;->getDisplayAccess()Lorg/microemu/DisplayAccess;

    move-result-object v0

    .line 89
    .local v0, "da":Lorg/microemu/DisplayAccess;
    :goto_0
    invoke-interface {v0}, Lorg/microemu/DisplayAccess;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Displayable;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 90
    iget-object v4, p0, Ljavax/microedition/lcdui/Ticker;->text:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-virtual {p1, v4, v3, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 91
    add-int/2addr v3, v2

    goto :goto_0

    .line 93
    :cond_0
    iget v4, p0, Ljavax/microedition/lcdui/Ticker;->textPos:I

    add-int/2addr v4, v2

    if-gez v4, :cond_1

    .line 94
    iget v4, p0, Ljavax/microedition/lcdui/Ticker;->textPos:I

    add-int/2addr v4, v2

    iput v4, p0, Ljavax/microedition/lcdui/Ticker;->resetTextPosTo:I

    .line 96
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v4

    return v4

    .line 96
    .end local v0    # "da":Lorg/microemu/DisplayAccess;
    .end local v2    # "stringWidth":I
    .end local v3    # "xPos":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Ticker;->text:Ljava/lang/String;

    .line 71
    return-void
.end method
