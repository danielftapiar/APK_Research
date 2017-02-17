.class final enum Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;
.super Ljava/lang/Enum;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

.field public static final enum DEFAULT:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

.field public static final enum DEFAULT_BOLD:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

.field public static final enum MONOSPACE:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

.field public static final enum SANS_SERIF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

.field public static final enum SERIF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->DEFAULT:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    const-string v1, "DEFAULT_BOLD"

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->DEFAULT_BOLD:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    const-string v1, "MONOSPACE"

    invoke-direct {v0, v1, v4}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->MONOSPACE:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    const-string v1, "SANS_SERIF"

    invoke-direct {v0, v1, v5}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->SANS_SERIF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    const-string v1, "SERIF"

    invoke-direct {v0, v1, v6}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->SERIF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->DEFAULT:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->DEFAULT_BOLD:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->MONOSPACE:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->SANS_SERIF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    aput-object v1, v0, v5

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->SERIF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    aput-object v1, v0, v6

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    return-object v0
.end method


# virtual methods
.method final toTypeface()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily$1;->$SwitchMap$org$mapsforge$android$maps$rendertheme$renderinstruction$FontFamily:[I

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 37
    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
