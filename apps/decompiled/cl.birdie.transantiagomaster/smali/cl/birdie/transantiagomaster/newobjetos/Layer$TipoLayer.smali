.class public final enum Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/newobjetos/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TipoLayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

.field public static final enum TIPO_BUS:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

.field public static final enum TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

.field public static final enum TIPO_RECLAMO:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    const-string v1, "TIPO_BUS"

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_BUS:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    const-string v1, "TIPO_LUGAR"

    invoke-direct {v0, v1, v3}, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    const-string v1, "TIPO_RECLAMO"

    invoke-direct {v0, v1, v4}, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_RECLAMO:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    const/4 v0, 0x3

    new-array v0, v0, [Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_BUS:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    aput-object v1, v0, v2

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    aput-object v1, v0, v3

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_RECLAMO:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    aput-object v1, v0, v4

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    return-object v0
.end method

.method public static values()[Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    array-length v1, v0

    new-array v2, v1, [Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
