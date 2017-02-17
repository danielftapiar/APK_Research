.class synthetic Lnet/veritran/component/view/VTCarousel3d$1;
.super Ljava/lang/Object;
.source "VTCarousel3d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/view/VTCarousel3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$veritran$component$view$VTCarousel3d$CarrouselType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->values()[Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/veritran/component/view/VTCarousel3d$1;->$SwitchMap$net$veritran$component$view$VTCarousel3d$CarrouselType:[I

    :try_start_0
    sget-object v0, Lnet/veritran/component/view/VTCarousel3d$1;->$SwitchMap$net$veritran$component$view$VTCarousel3d$CarrouselType:[I

    sget-object v1, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lnet/veritran/component/view/VTCarousel3d$1;->$SwitchMap$net$veritran$component$view$VTCarousel3d$CarrouselType:[I

    sget-object v1, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->HIGHLIGHTED:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
