.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;
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
    name = "ReferencePositionYComparator"
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
.field static final INSTANCE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;->INSTANCE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    .end local p2    # "x1":Ljava/lang/Object;
    iget v0, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    iget v1, p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    iget v1, p2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
