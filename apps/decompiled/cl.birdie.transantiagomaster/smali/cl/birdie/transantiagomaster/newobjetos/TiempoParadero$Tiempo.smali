.class public final enum Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;
.super Ljava/lang/Enum;
.source "TiempoParadero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tiempo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

.field public static final enum TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

.field public static final enum TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    const-string v1, "TIEMPO_1"

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    const-string v1, "TIEMPO_2"

    invoke-direct {v0, v1, v3}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    const/4 v0, 0x2

    new-array v0, v0, [Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    aput-object v1, v0, v2

    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    aput-object v1, v0, v3

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    return-object v0
.end method

.method public static values()[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    array-length v1, v0

    new-array v2, v1, [Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
