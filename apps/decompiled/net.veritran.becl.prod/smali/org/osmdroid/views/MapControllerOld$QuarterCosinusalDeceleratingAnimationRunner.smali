.class public Lorg/osmdroid/views/MapControllerOld$QuarterCosinusalDeceleratingAnimationRunner;
.super Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;
.source "MapControllerOld.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapControllerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QuarterCosinusalDeceleratingAnimationRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapControllerOld;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/views/MapControllerOld;II)V
    .locals 6
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I

    .prologue
    .line 640
    const/16 v4, 0xa

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$QuarterCosinusalDeceleratingAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    .line 642
    return-void
.end method

.method protected constructor <init>(Lorg/osmdroid/views/MapControllerOld;IIII)V
    .locals 9
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I
    .param p4, "aSmoothness"    # I
    .param p5, "aDuration"    # I

    .prologue
    const/4 v6, 0x0

    .line 645
    iput-object p1, p0, Lorg/osmdroid/views/MapControllerOld$QuarterCosinusalDeceleratingAnimationRunner;->this$0:Lorg/osmdroid/views/MapControllerOld;

    .line 646
    const v7, 0x3fc90fdb

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIIIFFF)V

    .line 647
    return-void
.end method
