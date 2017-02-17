.class public Lorg/osmdroid/api/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"


# instance fields
.field public color:I

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/osmdroid/api/Polyline;->color:I

    .line 32
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/osmdroid/api/Polyline;->width:F

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/api/Polyline;->points:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public color(I)Lorg/osmdroid/api/Polyline;
    .locals 0
    .param p1, "aColor"    # I

    .prologue
    .line 25
    iput p1, p0, Lorg/osmdroid/api/Polyline;->color:I

    .line 26
    return-object p0
.end method

.method public points(Ljava/util/List;)Lorg/osmdroid/api/Polyline;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lorg/osmdroid/api/Polyline;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "aPoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/api/IGeoPoint;>;"
    iput-object p1, p0, Lorg/osmdroid/api/Polyline;->points:Ljava/util/List;

    .line 54
    return-object p0
.end method

.method public varargs points([Lorg/osmdroid/api/IGeoPoint;)Lorg/osmdroid/api/Polyline;
    .locals 1
    .param p1, "aPoints"    # [Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 62
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/api/Polyline;->points(Ljava/util/List;)Lorg/osmdroid/api/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public width(F)Lorg/osmdroid/api/Polyline;
    .locals 0
    .param p1, "aWidth"    # F

    .prologue
    .line 39
    iput p1, p0, Lorg/osmdroid/api/Polyline;->width:F

    .line 40
    return-object p0
.end method
