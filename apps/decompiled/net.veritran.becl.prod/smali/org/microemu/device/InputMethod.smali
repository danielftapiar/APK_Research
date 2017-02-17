.class public abstract Lorg/microemu/device/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# static fields
.field public static final INPUT_123:I = 0x1

.field public static final INPUT_ABC_LOWER:I = 0x3

.field public static final INPUT_ABC_UPPER:I = 0x2

.field public static final INPUT_NONE:I

.field static inputMethod:Lorg/microemu/device/InputMethod;


# instance fields
.field protected inputMethodListener:Lorg/microemu/device/InputMethodListener;

.field inputMode:I

.field protected maxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lorg/microemu/device/InputMethod;->inputMethod:Lorg/microemu/device/InputMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/microemu/device/InputMethod;->inputMode:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/microemu/device/InputMethod;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    return-void
.end method

.method public static validate(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "constraints"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    const v2, 0xffff

    and-int/2addr v2, p1

    packed-switch v2, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 108
    :pswitch_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 123
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getGameAction(I)I
.end method

.method public getInputMode()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/microemu/device/InputMethod;->inputMode:I

    return v0
.end method

.method public abstract getKeyCode(I)I
.end method

.method public abstract getKeyName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public removeInputMethodListener(Lorg/microemu/device/InputMethodListener;)V
    .locals 1
    .param p1, "l"    # Lorg/microemu/device/InputMethodListener;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/microemu/device/InputMethod;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    if-ne p1, v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/microemu/device/InputMethod;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/microemu/device/InputMethod;->setInputMode(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public setInputMethodListener(Lorg/microemu/device/InputMethodListener;)V
    .locals 2
    .param p1, "l"    # Lorg/microemu/device/InputMethodListener;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/microemu/device/InputMethod;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    .line 67
    invoke-interface {p1}, Lorg/microemu/device/InputMethodListener;->getConstraints()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/microemu/device/InputMethod;->setInputMode(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/microemu/device/InputMethod;->setInputMode(I)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 90
    iput p1, p0, Lorg/microemu/device/InputMethod;->inputMode:I

    .line 91
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 96
    iput p1, p0, Lorg/microemu/device/InputMethod;->maxSize:I

    .line 97
    return-void
.end method
