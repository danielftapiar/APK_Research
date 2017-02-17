.class public final enum Lorg/mapsforge/android/maps/MapScaleBar$TextField;
.super Ljava/lang/Enum;
.source "MapScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/MapScaleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/MapScaleBar$TextField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/MapScaleBar$TextField;

.field public static final enum FOOT:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

.field public static final enum KILOMETER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

.field public static final enum METER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

.field public static final enum MILE:Lorg/mapsforge/android/maps/MapScaleBar$TextField;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v1, "FOOT"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/MapScaleBar$TextField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->FOOT:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    .line 45
    new-instance v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v1, "KILOMETER"

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/android/maps/MapScaleBar$TextField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->KILOMETER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    .line 50
    new-instance v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v1, "METER"

    invoke-direct {v0, v1, v4}, Lorg/mapsforge/android/maps/MapScaleBar$TextField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->METER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    .line 55
    new-instance v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v1, "MILE"

    invoke-direct {v0, v1, v5}, Lorg/mapsforge/android/maps/MapScaleBar$TextField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->MILE:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->FOOT:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->KILOMETER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->METER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->MILE:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    aput-object v1, v0, v5

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->$VALUES:[Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/MapScaleBar$TextField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/MapScaleBar$TextField;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->$VALUES:[Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/MapScaleBar$TextField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    return-object v0
.end method
