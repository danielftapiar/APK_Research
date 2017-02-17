.class public final Lcom/viewpagerindicator/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CirclePageIndicator:[I

.field public static final CirclePageIndicator_centered:I = 0x0

.field public static final CirclePageIndicator_fillColor:I = 0x1

.field public static final CirclePageIndicator_orientation:I = 0x3

.field public static final CirclePageIndicator_pageColor:I = 0x2

.field public static final CirclePageIndicator_radius:I = 0x4

.field public static final CirclePageIndicator_snap:I = 0x5

.field public static final CirclePageIndicator_strokeColor:I = 0x6

.field public static final CirclePageIndicator_strokeWidth:I = 0x7

.field public static final TitlePageIndicator:[I

.field public static final TitlePageIndicator_clipPadding:I = 0x0

.field public static final TitlePageIndicator_footerColor:I = 0x1

.field public static final TitlePageIndicator_footerIndicatorHeight:I = 0x4

.field public static final TitlePageIndicator_footerIndicatorStyle:I = 0x3

.field public static final TitlePageIndicator_footerIndicatorUnderlinePadding:I = 0x5

.field public static final TitlePageIndicator_footerLineHeight:I = 0x2

.field public static final TitlePageIndicator_footerPadding:I = 0x6

.field public static final TitlePageIndicator_selectedBold:I = 0x8

.field public static final TitlePageIndicator_selectedColor:I = 0x7

.field public static final TitlePageIndicator_textColor:I = 0x9

.field public static final TitlePageIndicator_textSize:I = 0xa

.field public static final TitlePageIndicator_titlePadding:I = 0xb

.field public static final TitlePageIndicator_topPadding:I = 0xc

.field public static final ViewPagerIndicator:[I

.field public static final ViewPagerIndicator_vpiCirclePageIndicatorStyle:I = 0x0

.field public static final ViewPagerIndicator_vpiTabPageIndicatorStyle:I = 0x2

.field public static final ViewPagerIndicator_vpiTabTextStyle:I = 0x3

.field public static final ViewPagerIndicator_vpiTitlePageIndicatorStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->CirclePageIndicator:[I

    .line 114
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator:[I

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/viewpagerindicator/R$styleable;->ViewPagerIndicator:[I

    .line 104
    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 114
    :array_1
    .array-data 4
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
    .end array-data

    .line 128
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
