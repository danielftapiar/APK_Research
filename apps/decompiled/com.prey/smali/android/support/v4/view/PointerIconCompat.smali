.class public final Landroid/support/v4/view/PointerIconCompat;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;,
        Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;,
        Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

.field public static final STYLE_ALIAS:I = 0x3f2

.field public static final STYLE_ALL_SCROLL:I = 0x3f5

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_CELL:I = 0x3ee

.field public static final STYLE_CONTEXT_MENU:I = 0x3e9

.field public static final STYLE_COPY:I = 0x3f3

.field public static final STYLE_CROSSHAIR:I = 0x3ef

.field public static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_GRAB:I = 0x3fc

.field public static final STYLE_GRABBING:I = 0x3fd

.field public static final STYLE_HAND:I = 0x3ea

.field public static final STYLE_HELP:I = 0x3eb

.field public static final STYLE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final STYLE_NO_DROP:I = 0x3f4

.field public static final STYLE_NULL:I = 0x0

.field public static final STYLE_TEXT:I = 0x3f0

.field public static final STYLE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final STYLE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final STYLE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final STYLE_VERTICAL_TEXT:I = 0x3f1

.field public static final STYLE_WAIT:I = 0x3ec

.field public static final STYLE_ZOOM_IN:I = 0x3fa

.field public static final STYLE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointerIcon"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private static create(Ljava/lang/Object;)Landroid/support/v4/view/PointerIconCompat;
    .locals 1
    .param p0, "pointerIcon"    # Ljava/lang/Object;

    .prologue
    .line 106
    new-instance v0, Landroid/support/v4/view/PointerIconCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/support/v4/view/PointerIconCompat;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 193
    sget-object v0, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->createCustomIcon(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/PointerIconCompat;->create(Ljava/lang/Object;)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 176
    sget-object v0, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/PointerIconCompat;->create(Ljava/lang/Object;)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    return-object v0
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/support/v4/view/PointerIconCompat;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 218
    sget-object v0, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->loadCustomIcon(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/PointerIconCompat;->create(Ljava/lang/Object;)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-object v0
.end method
