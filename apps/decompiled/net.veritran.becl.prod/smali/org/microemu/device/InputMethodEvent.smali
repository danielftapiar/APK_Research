.class public Lorg/microemu/device/InputMethodEvent;
.super Ljava/lang/Object;
.source "InputMethodEvent.java"


# static fields
.field public static final CARET_POSITION_CHANGED:I = 0x1

.field public static final INPUT_METHOD_TEXT_CHANGED:I = 0x2


# instance fields
.field caret:I

.field text:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "caret"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/microemu/device/InputMethodEvent;->type:I

    .line 42
    iput p2, p0, Lorg/microemu/device/InputMethodEvent;->caret:I

    .line 43
    iput-object p3, p0, Lorg/microemu/device/InputMethodEvent;->text:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getCaret()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/microemu/device/InputMethodEvent;->caret:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/microemu/device/InputMethodEvent;->text:Ljava/lang/String;

    return-object v0
.end method
