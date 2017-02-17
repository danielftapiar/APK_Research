.class Ljavax/microedition/lcdui/StringComponent;
.super Ljava/lang/Object;
.source "StringComponent.java"


# instance fields
.field private breaks:[I

.field private invertPaint:Z

.field private numOfBreaks:I

.field private text:Ljava/lang/String;

.field private width:I

.field private widthDecreaser:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/StringComponent;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    .line 34
    iput-boolean v1, p0, Ljavax/microedition/lcdui/StringComponent;->invertPaint:Z

    .line 47
    monitor-enter p0

    .line 48
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Ljavax/microedition/lcdui/StringComponent;->width:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/StringComponent;->widthDecreaser:I

    .line 50
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/StringComponent;->setText(Ljava/lang/String;)V

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private insertBreak(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x0

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    if-ge v0, v2, :cond_0

    .line 208
    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    aget v2, v2, v0

    if-ge p1, v2, :cond_2

    .line 212
    :cond_0
    iget v2, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 213
    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [I

    .line 214
    .local v1, "newbreaks":[I
    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    iget v3, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iput-object v1, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    .line 217
    .end local v1    # "newbreaks":[I
    :cond_1
    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    sub-int/2addr v5, v0

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    aput p1, v2, v0

    .line 219
    iget v2, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    .line 220
    return-void

    .line 207
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateBreaks()V
    .locals 6

    .prologue
    .line 223
    iget-object v4, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 258
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v4

    invoke-interface {v4}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v4

    invoke-interface {v4}, Lorg/microemu/device/DeviceDisplay;->getWidth()I

    move-result v4

    iget v5, p0, Ljavax/microedition/lcdui/StringComponent;->widthDecreaser:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljavax/microedition/lcdui/StringComponent;->width:I

    .line 231
    const/4 v3, 0x0

    .line 232
    .local v3, "prevIndex":I
    const/4 v0, 0x0

    .line 233
    .local v0, "canBreak":I
    const/4 v4, 0x0

    iput v4, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    .line 234
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    .line 236
    .local v1, "f":Ljavax/microedition/lcdui/Font;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 237
    iget-object v4, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 238
    add-int/lit8 v0, v2, 0x1

    .line 240
    :cond_2
    iget-object v4, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 241
    invoke-direct {p0, v2}, Ljavax/microedition/lcdui/StringComponent;->insertBreak(I)V

    .line 242
    const/4 v0, 0x0

    .line 243
    add-int/lit8 v3, v2, 0x1

    .line 236
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_4
    iget-object v4, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    sub-int v5, v2, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v4, v3, v5}, Ljavax/microedition/lcdui/Font;->substringWidth(Ljava/lang/String;II)I

    move-result v4

    iget v5, p0, Ljavax/microedition/lcdui/StringComponent;->width:I

    if-le v4, v5, :cond_3

    .line 247
    if-eqz v0, :cond_5

    .line 248
    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/StringComponent;->insertBreak(I)V

    .line 249
    move v2, v0

    .line 250
    move v3, v2

    .line 255
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 252
    :cond_5
    invoke-direct {p0, v2}, Ljavax/microedition/lcdui/StringComponent;->insertBreak(I)V

    .line 253
    add-int/lit8 v3, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getCharHeight()I
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    return v0
.end method

.method public getCharPositionX(I)I
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget v3, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 61
    invoke-direct {p0}, Ljavax/microedition/lcdui/StringComponent;->updateBreaks()V

    .line 64
    :cond_0
    const/4 v2, 0x0

    .line 65
    .local v2, "prevIndex":I
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 67
    .local v0, "f":Ljavax/microedition/lcdui/Font;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    if-ge v1, v3, :cond_1

    .line 68
    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_2

    .line 74
    :cond_1
    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    sub-int v4, p1, v2

    invoke-virtual {v0, v3, v2, v4}, Ljavax/microedition/lcdui/Font;->substringWidth(Ljava/lang/String;II)I

    move-result v3

    monitor-exit p0

    return v3

    .line 71
    :cond_2
    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    aget v2, v3, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "f":Ljavax/microedition/lcdui/Font;
    .end local v1    # "i":I
    .end local v2    # "prevIndex":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCharPositionY(I)I
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "y":I
    monitor-enter p0

    .line 81
    :try_start_0
    iget v3, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 82
    invoke-direct {p0}, Ljavax/microedition/lcdui/StringComponent;->updateBreaks()V

    .line 85
    :cond_0
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 87
    .local v0, "f":Ljavax/microedition/lcdui/Font;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    if-ge v1, v3, :cond_1

    .line 88
    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_2

    .line 93
    :cond_1
    monitor-exit p0

    .line 95
    return v2

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "f":Ljavax/microedition/lcdui/Font;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getHeight()I
    .locals 4

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget v2, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 102
    invoke-direct {p0}, Ljavax/microedition/lcdui/StringComponent;->updateBreaks()V

    .line 105
    :cond_0
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 107
    .local v0, "f":Ljavax/microedition/lcdui/Font;
    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 108
    const/4 v1, 0x0

    monitor-exit p0

    .line 124
    :goto_0
    return v1

    .line 111
    :cond_1
    iget v2, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    if-nez v2, :cond_2

    .line 112
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 122
    .end local v0    # "f":Ljavax/microedition/lcdui/Font;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 115
    .restart local v0    # "f":Ljavax/microedition/lcdui/Font;
    :cond_2
    :try_start_1
    iget v2, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 117
    .local v1, "height":I
    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    iget v3, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    iget-object v3, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 122
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public invertPaint(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iput-boolean p1, p0, Ljavax/microedition/lcdui/StringComponent;->invertPaint:Z

    .line 134
    monitor-exit p0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v5, 0x0

    .line 138
    iget-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return v5

    .line 143
    :cond_0
    monitor-enter p0

    .line 144
    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 145
    invoke-direct {p0}, Ljavax/microedition/lcdui/StringComponent;->updateBreaks()V

    .line 149
    :cond_1
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v7

    .line 151
    .local v7, "f":Ljavax/microedition/lcdui/Font;
    const/4 v5, 0x0

    .local v5, "y":I
    move v2, v5

    .local v2, "prevIndex":I
    move v8, v5

    .local v8, "i":I
    :goto_1
    iget v0, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    if-ge v8, v0, :cond_4

    .line 152
    iget-boolean v0, p0, Ljavax/microedition/lcdui/StringComponent;->invertPaint:Z

    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    .line 157
    :goto_2
    const/4 v0, 0x0

    iget v1, p0, Ljavax/microedition/lcdui/StringComponent;->width:I

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v5, v1, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 158
    iget-boolean v0, p0, Ljavax/microedition/lcdui/StringComponent;->invertPaint:Z

    if-eqz v0, :cond_3

    .line 159
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    .line 163
    :goto_3
    iget-object v1, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    iget-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    aget v0, v0, v8

    sub-int v3, v0, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->drawSubstring(Ljava/lang/String;IIIII)V

    .line 164
    iget-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->breaks:[I

    aget v2, v0, v8

    .line 165
    invoke-virtual {v7}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    add-int/2addr v5, v0

    .line 151
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 155
    :cond_2
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    goto :goto_2

    .line 185
    .end local v2    # "prevIndex":I
    .end local v5    # "y":I
    .end local v7    # "f":Ljavax/microedition/lcdui/Font;
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 161
    .restart local v2    # "prevIndex":I
    .restart local v5    # "y":I
    .restart local v7    # "f":Ljavax/microedition/lcdui/Font;
    .restart local v8    # "i":I
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    goto :goto_3

    .line 170
    :cond_4
    iget-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 171
    :cond_5
    iget-boolean v0, p0, Ljavax/microedition/lcdui/StringComponent;->invertPaint:Z

    if-eqz v0, :cond_7

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    .line 176
    :goto_4
    const/4 v0, 0x0

    iget v1, p0, Ljavax/microedition/lcdui/StringComponent;->width:I

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v5, v1, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 177
    iget-boolean v0, p0, Ljavax/microedition/lcdui/StringComponent;->invertPaint:Z

    if-eqz v0, :cond_8

    .line 178
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    .line 182
    :goto_5
    iget-object v1, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    iget-object v0, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v3, v0, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->drawSubstring(Ljava/lang/String;IIIII)V

    .line 183
    invoke-virtual {v7}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    add-int/2addr v5, v0

    .line 185
    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    .line 174
    :cond_7
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    goto :goto_4

    .line 180
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iput-object p1, p0, Ljavax/microedition/lcdui/StringComponent;->text:Ljava/lang/String;

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWidthDecreaser(I)V
    .locals 1
    .param p1, "widthDecreaser"    # I

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iput p1, p0, Ljavax/microedition/lcdui/StringComponent;->widthDecreaser:I

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/StringComponent;->numOfBreaks:I

    .line 201
    monitor-exit p0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
