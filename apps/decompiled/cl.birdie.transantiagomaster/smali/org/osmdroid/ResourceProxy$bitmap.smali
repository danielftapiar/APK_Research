.class public final enum Lorg/osmdroid/ResourceProxy$bitmap;
.super Ljava/lang/Enum;
.source "ResourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/ResourceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "bitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/osmdroid/ResourceProxy$bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum center:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum direction_arrow:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum ic_menu_compass:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum ic_menu_mapmode:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum ic_menu_mylocation:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum ic_menu_offline:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum marker_default:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum marker_default_focused_base:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum navto_small:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum next:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum person:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum previous:Lorg/osmdroid/ResourceProxy$bitmap;

.field public static final enum unknown:Lorg/osmdroid/ResourceProxy$bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->unknown:Lorg/osmdroid/ResourceProxy$bitmap;

    .line 28
    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "center"

    invoke-direct {v0, v1, v4}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->center:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "direction_arrow"

    invoke-direct {v0, v1, v5}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->direction_arrow:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "marker_default"

    invoke-direct {v0, v1, v6}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "marker_default_focused_base"

    invoke-direct {v0, v1, v7}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default_focused_base:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "navto_small"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->navto_small:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "next"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->next:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "previous"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->previous:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "person"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->person:Lorg/osmdroid/ResourceProxy$bitmap;

    .line 33
    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "ic_menu_offline"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_offline:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "ic_menu_mylocation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_mylocation:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "ic_menu_compass"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_compass:Lorg/osmdroid/ResourceProxy$bitmap;

    new-instance v0, Lorg/osmdroid/ResourceProxy$bitmap;

    const-string v1, "ic_menu_mapmode"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$bitmap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_mapmode:Lorg/osmdroid/ResourceProxy$bitmap;

    .line 21
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/osmdroid/ResourceProxy$bitmap;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->unknown:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v1, v0, v3

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->center:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v1, v0, v4

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->direction_arrow:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v1, v0, v5

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v1, v0, v6

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default_focused_base:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->navto_small:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->next:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->previous:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->person:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_offline:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_mylocation:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_compass:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_mapmode:Lorg/osmdroid/ResourceProxy$bitmap;

    aput-object v2, v0, v1

    sput-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->$VALUES:[Lorg/osmdroid/ResourceProxy$bitmap;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/ResourceProxy$bitmap;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/ResourceProxy$bitmap;

    return-object v0
.end method

.method public static values()[Lorg/osmdroid/ResourceProxy$bitmap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->$VALUES:[Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-virtual {v0}, [Lorg/osmdroid/ResourceProxy$bitmap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/ResourceProxy$bitmap;

    return-object v0
.end method
