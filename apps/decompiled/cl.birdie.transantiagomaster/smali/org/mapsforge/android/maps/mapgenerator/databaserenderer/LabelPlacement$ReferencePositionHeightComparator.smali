.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;
.super Ljava/lang/Object;
.source "LabelPlacement.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReferencePositionHeightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;->INSTANCE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    .end local p2    # "x1":Ljava/lang/Object;
    iget v0, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    iget v1, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v0, v1

    iget v1, p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    iget v2, p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    iget v1, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v0, v1

    iget v1, p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    iget v2, p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
