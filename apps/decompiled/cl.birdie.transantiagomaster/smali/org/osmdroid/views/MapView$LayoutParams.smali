.class public Lorg/osmdroid/views/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignment:I

.field public geoPoint:Lorg/osmdroid/api/IGeoPoint;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 1706
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1707
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    .line 1708
    const/16 v0, 0x8

    iput v0, p0, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    .line 1709
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1715
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/api/IGeoPoint;II)V
    .locals 2
    .param p1, "geoPoint"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x2

    .line 1684
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1685
    if-eqz p1, :cond_0

    .line 1686
    iput-object p1, p0, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    .line 1690
    :goto_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    .line 1691
    iput p2, p0, Lorg/osmdroid/views/MapView$LayoutParams;->offsetX:I

    .line 1692
    iput p3, p0, Lorg/osmdroid/views/MapView$LayoutParams;->offsetY:I

    .line 1693
    return-void

    .line 1688
    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    goto :goto_0
.end method
