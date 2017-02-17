.class final enum Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;
.super Ljava/lang/Enum;
.source "RenderThemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

.field public static final enum RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

.field public static final enum RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

.field public static final enum RULE:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    const-string v1, "RENDER_THEME"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    const-string v1, "RENDERING_INSTRUCTION"

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    const-string v1, "RULE"

    invoke-direct {v0, v1, v4}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    aput-object v1, v0, v4

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    return-object v0
.end method
