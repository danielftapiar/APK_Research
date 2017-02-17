.class public final enum Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TIPO_BUSQUEDA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field public static final enum IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field public static final enum IMPERDIBLES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field public static final enum IMPERDIBLES_SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field public static final enum SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field public static final enum SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field public static final enum TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const-string v1, "SUCURSALES"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const-string v1, "CAJEROS"

    invoke-direct {v0, v1, v4}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const-string v1, "SUCURSALES_CAJEROS"

    invoke-direct {v0, v1, v5}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const-string v1, "IMPERDIBLES"

    invoke-direct {v0, v1, v6}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const-string v1, "TODOS"

    invoke-direct {v0, v1, v7}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const-string v1, "IMPERDIBLES_CAJEROS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const-string v1, "IMPERDIBLES_SUCURSALES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const/4 v0, 0x7

    new-array v0, v0, [Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    aput-object v1, v0, v3

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    aput-object v1, v0, v4

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    aput-object v1, v0, v5

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    aput-object v1, v0, v6

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    aput-object v2, v0, v1

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
