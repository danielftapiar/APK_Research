.class public final enum Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;
.super Ljava/lang/Enum;
.source "IFavorito.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TipoFavorito"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

.field public static final enum TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

.field public static final enum TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

.field public static final enum TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    const-string v1, "TIPO_PARADERO"

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    .line 9
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    const-string v1, "TIPO_LUGAR"

    invoke-direct {v0, v1, v3}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    .line 10
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    const-string v1, "TIPO_RECORRIDO"

    invoke-direct {v0, v1, v4}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    aput-object v1, v0, v2

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    aput-object v1, v0, v3

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    aput-object v1, v0, v4

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    return-object v0
.end method

.method public static values()[Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    array-length v1, v0

    new-array v2, v1, [Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
