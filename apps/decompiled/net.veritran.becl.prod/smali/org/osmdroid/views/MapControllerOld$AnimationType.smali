.class public final enum Lorg/osmdroid/views/MapControllerOld$AnimationType;
.super Ljava/lang/Enum;
.source "MapControllerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapControllerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/osmdroid/views/MapControllerOld$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/MapControllerOld$AnimationType;

.field public static final enum EXPONENTIALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

.field public static final enum HALFCOSINUSALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

.field public static final enum LINEAR:Lorg/osmdroid/views/MapControllerOld$AnimationType;

.field public static final enum MIDDLEPEAKSPEED:Lorg/osmdroid/views/MapControllerOld$AnimationType;

.field public static final enum QUARTERCOSINUSALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/MapControllerOld$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;->LINEAR:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    .line 340
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;

    const-string v1, "EXPONENTIALDECELERATING"

    invoke-direct {v0, v1, v3}, Lorg/osmdroid/views/MapControllerOld$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;->EXPONENTIALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    .line 352
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;

    const-string v1, "QUARTERCOSINUSALDECELERATING"

    invoke-direct {v0, v1, v4}, Lorg/osmdroid/views/MapControllerOld$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;->QUARTERCOSINUSALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    .line 364
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;

    const-string v1, "HALFCOSINUSALDECELERATING"

    invoke-direct {v0, v1, v5}, Lorg/osmdroid/views/MapControllerOld$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;->HALFCOSINUSALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    .line 376
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;

    const-string v1, "MIDDLEPEAKSPEED"

    invoke-direct {v0, v1, v6}, Lorg/osmdroid/views/MapControllerOld$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;->MIDDLEPEAKSPEED:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    .line 316
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/osmdroid/views/MapControllerOld$AnimationType;

    sget-object v1, Lorg/osmdroid/views/MapControllerOld$AnimationType;->LINEAR:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/MapControllerOld$AnimationType;->EXPONENTIALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/osmdroid/views/MapControllerOld$AnimationType;->QUARTERCOSINUSALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/osmdroid/views/MapControllerOld$AnimationType;->HALFCOSINUSALDECELERATING:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/osmdroid/views/MapControllerOld$AnimationType;->MIDDLEPEAKSPEED:Lorg/osmdroid/views/MapControllerOld$AnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;->$VALUES:[Lorg/osmdroid/views/MapControllerOld$AnimationType;

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
    .line 316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/MapControllerOld$AnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 316
    const-class v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;

    return-object v0
.end method

.method public static values()[Lorg/osmdroid/views/MapControllerOld$AnimationType;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lorg/osmdroid/views/MapControllerOld$AnimationType;->$VALUES:[Lorg/osmdroid/views/MapControllerOld$AnimationType;

    invoke-virtual {v0}, [Lorg/osmdroid/views/MapControllerOld$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/MapControllerOld$AnimationType;

    return-object v0
.end method
