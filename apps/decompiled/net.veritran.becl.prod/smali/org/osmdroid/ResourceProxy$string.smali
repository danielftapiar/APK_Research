.class public final enum Lorg/osmdroid/ResourceProxy$string;
.super Ljava/lang/Enum;
.source "ResourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/ResourceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "string"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/osmdroid/ResourceProxy$string;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/ResourceProxy$string;

.field public static final enum base_nl:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum bing:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum cloudmade_small:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum cloudmade_standard:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum compass:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum cyclemap:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum fiets_nl:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum format_distance_feet:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum format_distance_kilometers:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum format_distance_meters:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum format_distance_miles:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum format_distance_nautical_miles:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum map_mode:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum mapbox:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum mapnik:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum mapquest_aerial:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum mapquest_osm:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum my_location:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum offline_mode:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum online_mode:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum public_transport:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum roads_nl:Lorg/osmdroid/ResourceProxy$string;

.field public static final enum unknown:Lorg/osmdroid/ResourceProxy$string;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "mapnik"

    invoke-direct {v0, v1, v3}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->mapnik:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "cyclemap"

    invoke-direct {v0, v1, v4}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->cyclemap:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "public_transport"

    invoke-direct {v0, v1, v5}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->public_transport:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "cloudmade_small"

    invoke-direct {v0, v1, v6}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->cloudmade_small:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "cloudmade_standard"

    invoke-direct {v0, v1, v7}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->cloudmade_standard:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "mapquest_osm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->mapquest_osm:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "mapquest_aerial"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->mapquest_aerial:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "bing"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->bing:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "mapbox"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->mapbox:Lorg/osmdroid/ResourceProxy$string;

    .line 14
    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "fiets_nl"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->fiets_nl:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "base_nl"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->base_nl:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "roads_nl"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->roads_nl:Lorg/osmdroid/ResourceProxy$string;

    .line 17
    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "unknown"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->unknown:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "format_distance_meters"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->format_distance_meters:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "format_distance_kilometers"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->format_distance_kilometers:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "format_distance_miles"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->format_distance_miles:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "format_distance_nautical_miles"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->format_distance_nautical_miles:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "format_distance_feet"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->format_distance_feet:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "online_mode"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->online_mode:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "offline_mode"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->offline_mode:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "my_location"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->my_location:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "compass"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->compass:Lorg/osmdroid/ResourceProxy$string;

    new-instance v0, Lorg/osmdroid/ResourceProxy$string;

    const-string v1, "map_mode"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/ResourceProxy$string;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->map_mode:Lorg/osmdroid/ResourceProxy$string;

    .line 8
    const/16 v0, 0x17

    new-array v0, v0, [Lorg/osmdroid/ResourceProxy$string;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->mapnik:Lorg/osmdroid/ResourceProxy$string;

    aput-object v1, v0, v3

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->cyclemap:Lorg/osmdroid/ResourceProxy$string;

    aput-object v1, v0, v4

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->public_transport:Lorg/osmdroid/ResourceProxy$string;

    aput-object v1, v0, v5

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->cloudmade_small:Lorg/osmdroid/ResourceProxy$string;

    aput-object v1, v0, v6

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->cloudmade_standard:Lorg/osmdroid/ResourceProxy$string;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapquest_osm:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapquest_aerial:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->bing:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapbox:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->fiets_nl:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->base_nl:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->roads_nl:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->unknown:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->format_distance_meters:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->format_distance_kilometers:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->format_distance_miles:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->format_distance_nautical_miles:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->format_distance_feet:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->online_mode:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->offline_mode:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->my_location:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->compass:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->map_mode:Lorg/osmdroid/ResourceProxy$string;

    aput-object v2, v0, v1

    sput-object v0, Lorg/osmdroid/ResourceProxy$string;->$VALUES:[Lorg/osmdroid/ResourceProxy$string;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/ResourceProxy$string;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lorg/osmdroid/ResourceProxy$string;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/ResourceProxy$string;

    return-object v0
.end method

.method public static values()[Lorg/osmdroid/ResourceProxy$string;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/osmdroid/ResourceProxy$string;->$VALUES:[Lorg/osmdroid/ResourceProxy$string;

    invoke-virtual {v0}, [Lorg/osmdroid/ResourceProxy$string;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/ResourceProxy$string;

    return-object v0
.end method
