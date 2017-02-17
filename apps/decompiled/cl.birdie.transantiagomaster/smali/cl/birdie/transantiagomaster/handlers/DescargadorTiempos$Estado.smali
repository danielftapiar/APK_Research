.class public final enum Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;
.super Ljava/lang/Enum;
.source "DescargadorTiempos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Estado"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESCARGANDO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

.field private static final synthetic ENUM$VALUES:[Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

.field public static final enum ERROR:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

.field public static final enum INICIALIZADO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

.field public static final enum LISTO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    const-string v1, "INICIALIZADO"

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->INICIALIZADO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    new-instance v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    const-string v1, "DESCARGANDO"

    invoke-direct {v0, v1, v3}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->DESCARGANDO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    new-instance v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    const-string v1, "LISTO"

    invoke-direct {v0, v1, v4}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->LISTO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    new-instance v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->ERROR:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    const/4 v0, 0x4

    new-array v0, v0, [Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    sget-object v1, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->INICIALIZADO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    aput-object v1, v0, v2

    sget-object v1, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->DESCARGANDO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    aput-object v1, v0, v3

    sget-object v1, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->LISTO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    aput-object v1, v0, v4

    sget-object v1, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->ERROR:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    aput-object v1, v0, v5

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    return-object v0
.end method

.method public static values()[Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    array-length v1, v0

    new-array v2, v1, [Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
