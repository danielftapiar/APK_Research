.class public final enum Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;
.super Ljava/lang/Enum;
.source "InternalRenderTheme.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/JobTheme;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;",
        ">;",
        "Lorg/mapsforge/android/maps/mapgenerator/JobTheme;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

.field public static final enum OSMARENDER:Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    const-string v1, "OSMARENDER"

    const-string v2, "/org/mapsforge/android/maps/rendertheme/osmarender/osmarender.xml"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->OSMARENDER:Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    const/4 v1, 0x0

    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->OSMARENDER:Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p2, p0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->path:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    return-object v0
.end method


# virtual methods
.method public final getRenderThemeAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
