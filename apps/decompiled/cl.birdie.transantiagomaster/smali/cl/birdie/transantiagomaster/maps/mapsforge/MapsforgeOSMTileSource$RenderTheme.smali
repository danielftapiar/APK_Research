.class final Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource$RenderTheme;
.super Ljava/lang/Object;
.source "MapsforgeOSMTileSource.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/JobTheme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderTheme"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource$RenderTheme;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRenderThemeAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/assets/rendertheme/osmarender.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 40
    return-object v0
.end method
