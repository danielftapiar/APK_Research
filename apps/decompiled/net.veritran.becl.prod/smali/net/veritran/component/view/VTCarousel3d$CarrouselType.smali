.class public final enum Lnet/veritran/component/view/VTCarousel3d$CarrouselType;
.super Ljava/lang/Enum;
.source "VTCarousel3d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/view/VTCarousel3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CarrouselType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/component/view/VTCarousel3d$CarrouselType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

.field public static final enum COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

.field public static final enum HIGHLIGHTED:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    const-string v1, "COVERFLOW"

    invoke-direct {v0, v1, v2}, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    new-instance v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    const-string v1, "HIGHLIGHTED"

    invoke-direct {v0, v1, v3}, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->HIGHLIGHTED:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    sget-object v1, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->HIGHLIGHTED:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->$VALUES:[Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/component/view/VTCarousel3d$CarrouselType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    return-object v0
.end method

.method public static values()[Lnet/veritran/component/view/VTCarousel3d$CarrouselType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->$VALUES:[Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    invoke-virtual {v0}, [Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    return-object v0
.end method
