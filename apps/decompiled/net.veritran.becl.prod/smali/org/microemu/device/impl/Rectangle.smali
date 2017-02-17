.class public Lorg/microemu/device/impl/Rectangle;
.super Lorg/microemu/device/impl/Shape;
.source "Rectangle.java"


# instance fields
.field public height:I

.field private initialized:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/microemu/device/impl/Shape;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/microemu/device/impl/Rectangle;->initialized:Z

    .line 43
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/microemu/device/impl/Shape;-><init>()V

    .line 46
    iput p1, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    .line 47
    iput p2, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    .line 48
    iput p3, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    .line 49
    iput p4, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/microemu/device/impl/Rectangle;->initialized:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/microemu/device/impl/Rectangle;)V
    .locals 1
    .param p1, "rect"    # Lorg/microemu/device/impl/Rectangle;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/microemu/device/impl/Shape;-><init>()V

    .line 54
    iget v0, p1, Lorg/microemu/device/impl/Rectangle;->x:I

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    .line 55
    iget v0, p1, Lorg/microemu/device/impl/Rectangle;->y:I

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    .line 56
    iget v0, p1, Lorg/microemu/device/impl/Rectangle;->width:I

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    .line 57
    iget v0, p1, Lorg/microemu/device/impl/Rectangle;->height:I

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/microemu/device/impl/Rectangle;->initialized:Z

    .line 60
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 2
    .param p1, "newx"    # I
    .param p2, "newy"    # I

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/microemu/device/impl/Rectangle;->initialized:Z

    if-eqz v0, :cond_4

    .line 64
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    if-ge p1, v0, :cond_2

    .line 65
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    iget v1, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    .line 66
    iput p1, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    .line 70
    :cond_0
    :goto_0
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    if-ge p2, v0, :cond_3

    .line 71
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    iget v1, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    sub-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    .line 72
    iput p2, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    .line 81
    :cond_1
    :goto_1
    return-void

    .line 67
    :cond_2
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    iget v1, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 68
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    goto :goto_0

    .line 73
    :cond_3
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    iget v1, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1

    .line 74
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    sub-int v0, p2, v0

    iput v0, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    goto :goto_1

    .line 77
    :cond_4
    iput p1, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    .line 78
    iput p2, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/microemu/device/impl/Rectangle;->initialized:Z

    goto :goto_1
.end method

.method public contains(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 84
    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    iget v1, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    iget v1, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBounds()Lorg/microemu/device/impl/Rectangle;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/microemu/device/impl/Rectangle;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/microemu/device/impl/Rectangle;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/microemu/device/impl/Rectangle;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/microemu/device/impl/Rectangle;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
