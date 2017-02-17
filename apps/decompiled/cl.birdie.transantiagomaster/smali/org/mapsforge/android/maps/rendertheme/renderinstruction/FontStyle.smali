.class final enum Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;
.super Ljava/lang/Enum;
.source "FontStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

.field public static final enum BOLD:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

.field public static final enum BOLD_ITALIC:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

.field public static final enum ITALIC:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

.field public static final enum NORMAL:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    const-string v1, "BOLD"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->BOLD:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    const-string v1, "BOLD_ITALIC"

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->BOLD_ITALIC:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    const-string v1, "ITALIC"

    invoke-direct {v0, v1, v4}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->ITALIC:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->NORMAL:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->BOLD:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->BOLD_ITALIC:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->ITALIC:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->NORMAL:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    aput-object v1, v0, v5

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    return-object v0
.end method


# virtual methods
.method final toInt()I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle$1;->$SwitchMap$org$mapsforge$android$maps$rendertheme$renderinstruction$FontStyle:[I

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
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

    .line 27
    :pswitch_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    .line 29
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 31
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 33
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
